local laravim = require("laravim")

-- Optional autostart setup
laravim.setup({
    php = "php"
})

vim.api.nvim_create_user_command("ArtisanMakeController", function(opts)
    laravim.make("controller", opts.args)
end, {nargs = "*"})

vim.api.nvim_create_user_command("ArtisanMakeModel", function(opts)
    laravim.make("model", opts.args)
end, {nargs = "*"})

-- Keymaps
vim.keymap.set("n", "<leader>amm", ":ArtisanMakeModel")
vim.keymap.set("n", "<leader>amc", ":ArtisanMakeController")

vim.api.nvim_create_user_command("ArtisanAbout", function(opts)
    laravim.artisan("about", opts.args)
end, {nargs = "*", desc = "Display basic information about your application"})

vim.api.nvim_create_user_command("ArtisanClearCompiled", function(opts)
    laravim.artisan("clear-compiled", opts.args)
end, {nargs = "*", desc = "Remove the compiled class file"})

vim.api.nvim_create_user_command("ArtisanCompletion", function(opts)
    laravim.artisan("completion", opts.args)
end, {nargs = "*", desc = "Dump the shell completion script"})

vim.api.nvim_create_user_command("ArtisanDb", function(opts)
    laravim.artisan("db", opts.args)
end, {nargs = "*", desc = "Start a new database CLI session"})

vim.api.nvim_create_user_command("ArtisanDocs", function(opts)
    laravim.artisan("docs", opts.args)
end, {nargs = "*", desc = "Access the Laravel documentation"})

vim.api.nvim_create_user_command("ArtisanDown", function(opts)
    laravim.artisan("down", opts.args)
end, {nargs = "*", desc = "Put the application into maintenance / demo mode"})

vim.api.nvim_create_user_command("ArtisanEnv", function(opts)
    laravim.artisan("env", opts.args)
end, {nargs = "*", desc = "Display the current framework environment"})

vim.api.nvim_create_user_command("ArtisanHelp", function(opts)
    laravim.artisan("help", opts.args)
end, {nargs = "*", desc = "Display help for a command"})

vim.api.nvim_create_user_command("ArtisanInspire", function(opts)
    laravim.artisan("inspire", opts.args)
end, {nargs = "*", desc = "Display an inspiring quote"})

vim.api.nvim_create_user_command("ArtisanList", function(opts)
    laravim.artisan("list", opts.args)
end, {nargs = "*", desc = "List commands"})

vim.api.nvim_create_user_command("ArtisanMigrate", function(opts)
    laravim.artisan("migrate", opts.args)
end, {nargs = "*", desc = "Run the database migrations"})

vim.api.nvim_create_user_command("ArtisanOptimize", function(opts)
    laravim.artisan("optimize", opts.args)
end, {nargs = "*", desc = "Cache framework bootstrap, configuration, and metadata to increase performance"})

vim.api.nvim_create_user_command("ArtisanPail", function(opts)
    laravim.artisan("pail", opts.args)
end, {nargs = "*", desc = "Tails the application logs"})

vim.api.nvim_create_user_command("ArtisanServe", function(opts)
    laravim.artisan("serve", opts.args)
end, {nargs = "*", desc = "Serve the application on the PHP development server"})

vim.api.nvim_create_user_command("ArtisanTest", function(opts)
    laravim.artisan("test", opts.args)
end, {nargs = "*", desc = "Run the application tests"})

vim.api.nvim_create_user_command("ArtisanTinker", function(opts)
    laravim.artisan("tinker", opts.args)
end, {nargs = "*", desc = "Interact with your application"})

vim.api.nvim_create_user_command("ArtisanUp", function(opts)
    laravim.artisan("up", opts.args)
end, {nargs = "*", desc = "Bring the application out of maintenance mode"})
vim.api.nvim_create_user_command("ArtisanAuthClearResets", function(opts)
    laravim.artisan("auth:clear-resets", opts.args)
end, {nargs = "*", desc = "Flush expired password reset tokens"})
vim.api.nvim_create_user_command("ArtisanCacheClear", function(opts)
    laravim.artisan("cache:clear", opts.args)
end, {nargs = "*", desc = "Flush the application cache"})

vim.api.nvim_create_user_command("ArtisanCacheForget", function(opts)
    laravim.artisan("cache:forget", opts.args)
end, {nargs = "*", desc = "Remove an item from the cache"})

vim.api.nvim_create_user_command("ArtisanCachePruneStaleTags", function(opts)
    laravim.artisan("cache:prune-stale-tags", opts.args)
end, {nargs = "*", desc = "Prune stale cache tags from the cache (Redis only)"})
vim.api.nvim_create_user_command("ArtisanChannelList", function(opts)
    laravim.artisan("channel:list", opts.args)
end, {nargs = "*", desc = "List all registered private broadcast channels"})

vim.api.nvim_create_user_command("ArtisanConfigCache", function(opts)
    laravim.artisan("config:cache", opts.args)
end, {nargs = "*", desc = "Create a cache file for faster configuration loading"})

vim.api.nvim_create_user_command("ArtisanConfigClear", function(opts)
    laravim.artisan("config:clear", opts.args)
end, {nargs = "*", desc = "Remove the configuration cache file"})

vim.api.nvim_create_user_command("ArtisanConfigPublish", function(opts)
    laravim.artisan("config:publish", opts.args)
end, {nargs = "*", desc = "Publish configuration files to your application"})

vim.api.nvim_create_user_command("ArtisanConfigShow", function(opts)
    laravim.artisan("config:show", opts.args)
end, {nargs = "*", desc = "Display all of the values for a given configuration file or key"})
vim.api.nvim_create_user_command("ArtisanDbMonitor", function(opts)
    laravim.artisan("db:monitor", opts.args)
end, {nargs = "*", desc = "Monitor the number of connections on the specified database"})

vim.api.nvim_create_user_command("ArtisanDbSeed", function(opts)
    laravim.artisan("db:seed", opts.args)
end, {nargs = "*", desc = "Seed the database with records"})

vim.api.nvim_create_user_command("ArtisanDbShow", function(opts)
    laravim.artisan("db:show", opts.args)
end, {nargs = "*", desc = "Display information about the given database"})

vim.api.nvim_create_user_command("ArtisanDbTable", function(opts)
    laravim.artisan("db:table", opts.args)
end, {nargs = "*", desc = "Display information about the given database table"})

vim.api.nvim_create_user_command("ArtisanDbWipe", function(opts)
    laravim.artisan("db:wipe", opts.args)
end, {nargs = "*", desc = "Drop all tables, views, and types"})
vim.api.nvim_create_user_command("ArtisanEnvDecrypt", function(opts)
    laravim.artisan("env:decrypt", opts.args)
end, {nargs = "*", desc = "Decrypt an environment file"})

vim.api.nvim_create_user_command("ArtisanEnvEncrypt", function(opts)
    laravim.artisan("env:encrypt", opts.args)
end, {nargs = "*", desc = "Encrypt an environment file"})

vim.api.nvim_create_user_command("ArtisanEventCache", function(opts)
    laravim.artisan("event:cache", opts.args)
end, {nargs = "*", desc = "Discover and cache the application's events and listeners"})

vim.api.nvim_create_user_command("ArtisanEventClear", function(opts)
    laravim.artisan("event:clear", opts.args)
end, {nargs = "*", desc = "Clear all cached events and listeners"})

vim.api.nvim_create_user_command("ArtisanEventList", function(opts)
    laravim.artisan("event:list", opts.args)
end, {nargs = "*", desc = "List the application's events and listeners"})

vim.api.nvim_create_user_command("ArtisanInstallApi", function(opts)
    laravim.artisan("install:api", opts.args)
end, {nargs = "*", desc = "Create an API routes file and install Laravel Sanctum or Laravel Passport"})

vim.api.nvim_create_user_command("ArtisanInstallBroadcasting", function(opts)
    laravim.artisan("install:broadcasting", opts.args)
end, {nargs = "*", desc = "Create a broadcasting channel routes file"})

vim.api.nvim_create_user_command("ArtisanKeyGenerate", function(opts)
    laravim.artisan("key:generate", opts.args)
end, {nargs = "*", desc = "Set the application key"})

vim.api.nvim_create_user_command("ArtisanLangPublish", function(opts)
    laravim.artisan("lang:publish", opts.args)
end, {nargs = "*", desc = "Publish all language files that are available for customization"})
vim.api.nvim_create_user_command("ArtisanMakeCacheTable", function(opts)
    laravim.artisan("make:cache-table", opts.args)
end, {nargs = "*", desc = "Create a migration for the cache database table"})

vim.api.nvim_create_user_command("ArtisanMakeCast", function(opts)
    laravim.artisan("make:cast", opts.args)
end, {nargs = "*", desc = "Create a new custom Eloquent cast class"})

vim.api.nvim_create_user_command("ArtisanMakeChannel", function(opts)
    laravim.artisan("make:channel", opts.args)
end, {nargs = "*", desc = "Create a new channel class"})

vim.api.nvim_create_user_command("ArtisanMakeClass", function(opts)
    laravim.artisan("make:class", opts.args)
end, {nargs = "*", desc = "Create a new class"})

vim.api.nvim_create_user_command("ArtisanMakeCommand", function(opts)
    laravim.artisan("make:command", opts.args)
end, {nargs = "*", desc = "Create a new Artisan command"})

vim.api.nvim_create_user_command("ArtisanMakeComponent", function(opts)
    laravim.artisan("make:component", opts.args)
end, {nargs = "*", desc = "Create a new view component class"})

vim.api.nvim_create_user_command("ArtisanMakeConfig", function(opts)
    laravim.artisan("make:config", opts.args)
end, {nargs = "*", desc = "Create a new configuration file"})

vim.api.nvim_create_user_command("ArtisanMakeEnum", function(opts)
    laravim.artisan("make:enum", opts.args)
end, {nargs = "*", desc = "Create a new enum"})

vim.api.nvim_create_user_command("ArtisanMakeEvent", function(opts)
    laravim.artisan("make:event", opts.args)
end, {nargs = "*", desc = "Create a new event class"})

vim.api.nvim_create_user_command("ArtisanMakeException", function(opts)
    laravim.artisan("make:exception", opts.args)
end, {nargs = "*", desc = "Create a new custom exception class"})

vim.api.nvim_create_user_command("ArtisanMakeFactory", function(opts)
    laravim.artisan("make:factory", opts.args)
end, {nargs = "*", desc = "Create a new model factory"})

vim.api.nvim_create_user_command("ArtisanMakeInterface", function(opts)
    laravim.artisan("make:interface", opts.args)
end, {nargs = "*", desc = "Create a new interface"})

vim.api.nvim_create_user_command("ArtisanMakeJob", function(opts)
    laravim.artisan("make:job", opts.args)
end, {nargs = "*", desc = "Create a new job class"})

vim.api.nvim_create_user_command("ArtisanMakeJobMiddleware", function(opts)
    laravim.artisan("make:job-middleware", opts.args)
end, {nargs = "*", desc = "Create a new job middleware class"})

vim.api.nvim_create_user_command("ArtisanMakeListener", function(opts)
    laravim.artisan("make:listener", opts.args)
end, {nargs = "*", desc = "Create a new event listener class"})

vim.api.nvim_create_user_command("ArtisanMakeMail", function(opts)
    laravim.artisan("make:mail", opts.args)
end, {nargs = "*", desc = "Create a new email class"})

vim.api.nvim_create_user_command("ArtisanMakeMiddleware", function(opts)
    laravim.artisan("make:middleware", opts.args)
end, {nargs = "*", desc = "Create a new HTTP middleware class"})

vim.api.nvim_create_user_command("ArtisanMakeMigration", function(opts)
    laravim.artisan("make:migration", opts.args)
end, {nargs = "*", desc = "Create a new migration file"})

vim.api.nvim_create_user_command("ArtisanMakeNotification", function(opts)
    laravim.artisan("make:notification", opts.args)
end, {nargs = "*", desc = "Create a new notification class"})

vim.api.nvim_create_user_command("ArtisanMakeNotificationsTable", function(opts)
    laravim.artisan("make:notifications-table", opts.args)
end, {nargs = "*", desc = "Create a migration for the notifications table"})

vim.api.nvim_create_user_command("ArtisanMakeObserver", function(opts)
    laravim.artisan("make:observer", opts.args)
end, {nargs = "*", desc = "Create a new observer class"})

vim.api.nvim_create_user_command("ArtisanMakePolicy", function(opts)
    laravim.artisan("make:policy", opts.args)
end, {nargs = "*", desc = "Create a new policy class"})

vim.api.nvim_create_user_command("ArtisanMakeProvider", function(opts)
    laravim.artisan("make:provider", opts.args)
end, {nargs = "*", desc = "Create a new service provider class"})

vim.api.nvim_create_user_command("ArtisanMakeQueueBatchesTable", function(opts)
    laravim.artisan("make:queue-batches-table", opts.args)
end, {nargs = "*", desc = "Create a migration for the batches database table"})

vim.api.nvim_create_user_command("ArtisanMakeQueueFailedTable", function(opts)
    laravim.artisan("make:queue-failed-table", opts.args)
end, {nargs = "*", desc = "Create a migration for the failed queue jobs database table"})

vim.api.nvim_create_user_command("ArtisanMakeQueueTable", function(opts)
    laravim.artisan("make:queue-table", opts.args)
end, {nargs = "*", desc = "Create a migration for the queue jobs database table"})

vim.api.nvim_create_user_command("ArtisanMakeRequest", function(opts)
    laravim.artisan("make:request", opts.args)
end, {nargs = "*", desc = "Create a new form request class"})

vim.api.nvim_create_user_command("ArtisanMakeResource", function(opts)
    laravim.artisan("make:resource", opts.args)
end, {nargs = "*", desc = "Create a new resource"})

vim.api.nvim_create_user_command("ArtisanMakeRule", function(opts)
    laravim.artisan("make:rule", opts.args)
end, {nargs = "*", desc = "Create a new validation rule"})

vim.api.nvim_create_user_command("ArtisanMakeScope", function(opts)
    laravim.artisan("make:scope", opts.args)
end, {nargs = "*", desc = "Create a new scope class"})

vim.api.nvim_create_user_command("ArtisanMakeSeeder", function(opts)
    laravim.artisan("make:seeder", opts.args)
end, {nargs = "*", desc = "Create a new seeder class"})

vim.api.nvim_create_user_command("ArtisanMakeSessionTable", function(opts)
    laravim.artisan("make:session-table", opts.args)
end, {nargs = "*", desc = "Create a migration for the session database table"})

vim.api.nvim_create_user_command("ArtisanMakeTest", function(opts)
    laravim.artisan("make:test", opts.args)
end, {nargs = "*", desc = "Create a new test class"})

vim.api.nvim_create_user_command("ArtisanMakeTrait", function(opts)
    laravim.artisan("make:trait", opts.args)
end, {nargs = "*", desc = "Create a new trait"})

vim.api.nvim_create_user_command("ArtisanMakeView", function(opts)
    laravim.artisan("make:view", opts.args)
end, {nargs = "*", desc = "Create a new view"})
vim.api.nvim_create_user_command("ArtisanMigrateFresh", function(opts)
    laravim.artisan("migrate:fresh", opts.args)
end, {nargs = "*", desc = "Drop all tables and re-run all migrations"})

vim.api.nvim_create_user_command("ArtisanMigrateInstall", function(opts)
    laravim.artisan("migrate:install", opts.args)
end, {nargs = "*", desc = "Create the migration repository"})

vim.api.nvim_create_user_command("ArtisanMigrateRefresh", function(opts)
    laravim.artisan("migrate:refresh", opts.args)
end, {nargs = "*", desc = "Reset and re-run all migrations"})

vim.api.nvim_create_user_command("ArtisanMigrateReset", function(opts)
    laravim.artisan("migrate:reset", opts.args)
end, {nargs = "*", desc = "Rollback all database migrations"})

vim.api.nvim_create_user_command("ArtisanMigrateRollback", function(opts)
    laravim.artisan("migrate:rollback", opts.args)
end, {nargs = "*", desc = "Rollback the last database migration"})

vim.api.nvim_create_user_command("ArtisanMigrateStatus", function(opts)
    laravim.artisan("migrate:status", opts.args)
end, {nargs = "*", desc = "Show the status of each migration"})

vim.api.nvim_create_user_command("ArtisanModelPrune", function(opts)
    laravim.artisan("model:prune", opts.args)
end, {nargs = "*", desc = "Prune models that are no longer needed"})

vim.api.nvim_create_user_command("ArtisanModelShow", function(opts)
    laravim.artisan("model:show", opts.args)
end, {nargs = "*", desc = "Show information about an Eloquent model"})

vim.api.nvim_create_user_command("ArtisanOptimizeClear", function(opts)
    laravim.artisan("optimize:clear", opts.args)
end, {nargs = "*", desc = "Remove the cached bootstrap files"})

vim.api.nvim_create_user_command("ArtisanPackageDiscover", function(opts)
    laravim.artisan("package:discover", opts.args)
end, {nargs = "*", desc = "Rebuild the cached package manifest"})
vim.api.nvim_create_user_command("ArtisanQueueClear", function(opts)
    laravim.artisan("queue:clear", opts.args)
end, {nargs = "*", desc = "Delete all of the jobs from the specified queue"})

vim.api.nvim_create_user_command("ArtisanQueueFailed", function(opts)
    laravim.artisan("queue:failed", opts.args)
end, {nargs = "*", desc = "List all of the failed queue jobs"})

vim.api.nvim_create_user_command("ArtisanQueueFlush", function(opts)
    laravim.artisan("queue:flush", opts.args)
end, {nargs = "*", desc = "Flush all of the failed queue jobs"})

vim.api.nvim_create_user_command("ArtisanQueueForget", function(opts)
    laravim.artisan("queue:forget", opts.args)
end, {nargs = "*", desc = "Delete a failed queue job"})

vim.api.nvim_create_user_command("ArtisanQueueListen", function(opts)
    laravim.artisan("queue:listen", opts.args)
end, {nargs = "*", desc = "Listen to a given queue"})

vim.api.nvim_create_user_command("ArtisanQueueMonitor", function(opts)
    laravim.artisan("queue:monitor", opts.args)
end, {nargs = "*", desc = "Monitor the size of the specified queues"})

vim.api.nvim_create_user_command("ArtisanQueuePruneBatches", function(opts)
    laravim.artisan("queue:prune-batches", opts.args)
end, {nargs = "*", desc = "Prune stale entries from the batches database"})

vim.api.nvim_create_user_command("ArtisanQueuePruneFailed", function(opts)
    laravim.artisan("queue:prune-failed", opts.args)
end, {nargs = "*", desc = "Prune stale entries from the failed jobs table"})

vim.api.nvim_create_user_command("ArtisanQueueRestart", function(opts)
    laravim.artisan("queue:restart", opts.args)
end, {nargs = "*", desc = "Restart queue worker daemons after their current job"})

vim.api.nvim_create_user_command("ArtisanQueueRetry", function(opts)
    laravim.artisan("queue:retry", opts.args)
end, {nargs = "*", desc = "Retry a failed queue job"})

vim.api.nvim_create_user_command("ArtisanQueueRetryBatch", function(opts)
    laravim.artisan("queue:retry-batch", opts.args)
end, {nargs = "*", desc = "Retry the failed jobs for a batch"})

vim.api.nvim_create_user_command("ArtisanQueueWork", function(opts)
    laravim.artisan("queue:work", opts.args)
end, {nargs = "*", desc = "Start processing jobs on the queue as a daemon"})
vim.api.nvim_create_user_command("ArtisanRouteCache", function(opts)
    laravim.artisan("route:cache", opts.args)
end, {nargs = "*", desc = "Create a route cache file for faster route registration"})

vim.api.nvim_create_user_command("ArtisanRouteClear", function(opts)
    laravim.artisan("route:clear", opts.args)
end, {nargs = "*", desc = "Remove the route cache file"})

vim.api.nvim_create_user_command("ArtisanRouteList", function(opts)
    laravim.artisan("route:list", opts.args)
end, {nargs = "*", desc = "List all registered routes"})

vim.api.nvim_create_user_command("ArtisanSailAdd", function(opts)
    laravim.artisan("sail:add", opts.args)
end, {nargs = "*", desc = "Add a service to an existing Sail installation"})

vim.api.nvim_create_user_command("ArtisanSailInstall", function(opts)
    laravim.artisan("sail:install", opts.args)
end, {nargs = "*", desc = "Install Laravel Sail's default Docker Compose file"})

vim.api.nvim_create_user_command("ArtisanSailPublish", function(opts)
    laravim.artisan("sail:publish", opts.args)
end, {nargs = "*", desc = "Publish the Laravel Sail Docker files"})

vim.api.nvim_create_user_command("ArtisanSanctumPruneExpired", function(opts)
    laravim.artisan("sanctum:prune-expired", opts.args)
end, {nargs = "*", desc = "Prune tokens expired for more than specified number of hours"})
vim.api.nvim_create_user_command("ArtisanScheduleClearCache", function(opts)
    laravim.artisan("schedule:clear-cache", opts.args)
end, {nargs = "*", desc = "Delete the cached mutex files created by scheduler"})

vim.api.nvim_create_user_command("ArtisanScheduleInterrupt", function(opts)
    laravim.artisan("schedule:interrupt", opts.args)
end, {nargs = "*", desc = "Interrupt the current schedule run"})

vim.api.nvim_create_user_command("ArtisanScheduleList", function(opts)
    laravim.artisan("schedule:list", opts.args)
end, {nargs = "*", desc = "List all scheduled tasks"})

vim.api.nvim_create_user_command("ArtisanScheduleRun", function(opts)
    laravim.artisan("schedule:run", opts.args)
end, {nargs = "*", desc = "Run the scheduled commands"})

vim.api.nvim_create_user_command("ArtisanScheduleTest", function(opts)
    laravim.artisan("schedule:test", opts.args)
end, {nargs = "*", desc = "Run a scheduled command"})

vim.api.nvim_create_user_command("ArtisanScheduleWork", function(opts)
    laravim.artisan("schedule:work", opts.args)
end, {nargs = "*", desc = "Start the schedule worker"})

vim.api.nvim_create_user_command("ArtisanSchemaDump", function(opts)
    laravim.artisan("schema:dump", opts.args)
end, {nargs = "*", desc = "Dump the given database schema"})

vim.api.nvim_create_user_command("ArtisanStorageLink", function(opts)
    laravim.artisan("storage:link", opts.args)
end, {nargs = "*", desc = "Create the symbolic links configured for the application"})

vim.api.nvim_create_user_command("ArtisanStorageUnlink", function(opts)
    laravim.artisan("storage:unlink", opts.args)
end, {nargs = "*", desc = "Delete existing symbolic links configured for the application"})

vim.api.nvim_create_user_command("ArtisanStubPublish", function(opts)
    laravim.artisan("stub:publish", opts.args)
end, {nargs = "*", desc = "Publish all stubs that are available for customization"})

vim.api.nvim_create_user_command("ArtisanVendorPublish", function(opts)
    laravim.artisan("vendor:publish", opts.args)
end, {nargs = "*", desc = "Publish any publishable assets from vendor packages"})

vim.api.nvim_create_user_command("ArtisanViewCache", function(opts)
    laravim.artisan("view:cache", opts.args)
end, {nargs = "*", desc = "Compile all of the application's Blade templates"})

vim.api.nvim_create_user_command("ArtisanViewClear", function(opts)
    laravim.artisan("view:clear", opts.args)
end, {nargs = "*", desc = "Clear all compiled view files"})

