<?php

namespace Prettus\Repository\Generators;
use Prettus\Repository\Generators\Migrations\NameParser;
use Prettus\Repository\Generators\Migrations\SchemaParser;

/**
 * Class MigrationGenerator
 * @package Prettus\Repository\Generators
 */
class MigrationGenerator extends Generator
{
    /**
     * Get stub name.
     *
     * @var string
     */
    protected $stub = 'migration/plain';

    /**
     * Get destination path for generated file.
     *
     * @return string
     */
    public function getPath()
    {
        return $this->getBasePath() . $this->getFileName() . '.php';
    }

    /**
     * Get base path of destination file.
     *
     * @return string
     */
    public function getBasePath()
    {
        return base_path() . '/database/migrations/';
    }

    /**
     * Get file name.
     *
     * @return string
     */
    public function getFileName()
    {
        return date('Y_m_d_His_') . $this->getMigrationName();
    }

    /**
     * Get migration name.
     *
     * @return string
     */
    public function getMigrationName()
    {
        return strtolower($this->name);
    }

    /**
     * Get root namespace.
     *
     * @return string
     */
    public function getRootNamespace()
    {
        return '';
    }

    /**
     * Get stub templates.
     *
     * @return string
     */
    public function getStub()
    {
        $parser = $this->getNameParser();

        return Stub::create(__DIR__ . '/Stubs/migration/add.stub', [
            'class' => $this->getClass(),
            'table' => $parser->getTable(),
            'fields_up' => $this->getSchemaParser()->up(),
            'fields_down' => $this->getSchemaParser()->down()
        ]);
    }

    /**
     * Get name parser.
     *
     * @return NameParser
     */
    public function getNameParser()
    {
        return new NameParser($this->name);
    }

    /**
     * Get schema parser.
     *
     * @return SchemaParser
     */
    public function getSchemaParser()
    {
        return new SchemaParser($this->fields);
    }
}