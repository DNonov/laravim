local laravim = require("laravim")

laravim.setup({
    php = "php",
})

local commands = {
    {name = "About", cmd = "about", desc = "Display basic information about your application"},
    {name = "ClearCompiled", cmd = "clear-compiled", desc = "Remove the compiled class file"},
    {name = "Completion", cmd = "completion", desc = "Dump the shell completion script"},
    {name = "Db", cmd = "db", desc = "Start a new database CLI session"},
    {name = "Docs", cmd = "docs", desc = "Access the Laravel documentation"},
    {name = "Down", cmd = "down", desc = "Put the application into maintenance / demo mode"},
    {name = "Env", cmd = "env", desc = "Display the current framework environment"},
    {name = "Help", cmd = "help", desc = "Display help for a command"},
    {name = "Inspire", cmd = "inspire", desc = "Display an inspiring quote"},
    {name = "List", cmd = "list", desc = "List commands"},
    {name = "Migrate", cmd = "migrate", desc = "Run the database migrations"},
    {name = "Optimize", cmd = "optimize", desc = "Cache framework bootstrap, configuration, and metadata to increase performance"},
    {name = "Pail", cmd = "pail", desc = "Tails the application logs"},
    {name = "Serve", cmd = "serve", desc = "Serve the application on the PHP development server"},
    {name = "Test", cmd = "test", desc = "Run the application tests"},
    {name = "Tinker", cmd = "tinker", desc = "Interact with your application"},
    {name = "Up", cmd = "up", desc = "Bring the application out of maintenance mode"},

    {name = "AuthClearResets", cmd = "auth:clear-resets", desc = "Flush expired password reset tokens"},

    {name = "CacheClear", cmd = "cache:clear", desc = "Flush the application cache"},
    {name = "CacheForget", cmd = "cache:forget", desc = "Remove an item from the cache"},
    {name = "CachePruneStaleTags", cmd = "cache:prune-stale-tags", desc = "Prune stale cache tags from the cache (Redis only)"},

    {name = "ChannelList", cmd = "channel:list", desc = "List all registered private broadcast channels"},

    {name = "ConfigCache", cmd = "config:cache", desc = "Create a cache file for faster configuration loading"},
    {name = "ConfigClear", cmd = "config:clear", desc = "Remove the configuration cache file"},
    {name = "ConfigPublish", cmd = "config:publish", desc = "Publish configuration files to your application"},
    {name = "ConfigShow", cmd = "config:show", desc = "Display all of the values for a given configuration file or key"},

    {name = "DbMonitor", cmd = "db:monitor", desc = "Monitor the number of connections on the specified database"},
    {name = "DbSeed", cmd = "db:seed", desc = "Seed the database with records"},
    {name = "DbShow", cmd = "db:show", desc = "Display information about the given database"},
    {name = "DbTable", cmd = "db:table", desc = "Display information about the given database table"},
    {name = "DbWipe", cmd = "db:wipe", desc = "Drop all tables, views, and types"},

    {name = "EnvDecrypt", cmd = "env:decrypt", desc = "Decrypt an environment file"},
    {name = "EnvEncrypt", cmd = "env:encrypt", desc = "Encrypt an environment file"},

    {name = "EventCache", cmd = "event:cache", desc = "Discover and cache the application's events and listeners"},
    {name = "EventClear", cmd = "event:clear", desc = "Clear all cached events and listeners"},
    {name = "EventList", cmd = "event:list", desc = "List the application's events and listeners"},

    {name = "InstallApi", cmd = "install:api", desc = "Create an API routes file and install Laravel Sanctum or Laravel Passport"},
    {name = "InstallBroadcasting", cmd = "install:broadcasting", desc = "Create a broadcasting channel routes file"},

    {name = "KeyGenerate", cmd = "key:generate", desc = "Set the application key"},

    {name = "LangPublish", cmd = "lang:publish", desc = "Publish all language files that are available for customization"},

    {name = "MakeController", cmd = "make:controller", desc = "Create a new controller class", make = true, file_type = "controller"},
    {name = "MakeModel", cmd = "make:model", desc = "Create a new Eloquent model class", make = true, file_type = "model"},
    {name = "MakeCacheTable", cmd = "make:cache-table", desc = "Create a migration for the cache database table"},
    {name = "MakeCast", cmd = "make:cast", desc = "Create a new custom Eloquent cast class"},
    {name = "MakeChannel", cmd = "make:channel", desc = "Create a new channel class"},
    {name = "MakeClass", cmd = "make:class", desc = "Create a new class"},
    {name = "MakeCommand", cmd = "make:command", desc = "Create a new Artisan command"},
    {name = "MakeComponent", cmd = "make:component", desc = "Create a new view component class"},
    {name = "MakeConfig", cmd = "make:config", desc = "Create a new configuration file"},
    {name = "MakeEnum", cmd = "make:enum", desc = "Create a new enum"},
    {name = "MakeEvent", cmd = "make:event", desc = "Create a new event class"},
    {name = "MakeException", cmd = "make:exception", desc = "Create a new custom exception class"},
    {name = "MakeFactory", cmd = "make:factory", desc = "Create a new model factory"},
    {name = "MakeInterface", cmd = "make:interface", desc = "Create a new interface"},
    {name = "MakeJob", cmd = "make:job", desc = "Create a new job class"},
    {name = "MakeJobMiddleware", cmd = "make:job-middleware", desc = "Create a new job middleware class"},
    {name = "MakeListener", cmd = "make:listener", desc = "Create a new event listener class"},
    {name = "MakeMail", cmd = "make:mail", desc = "Create a new email class"},
    {name = "MakeMiddleware", cmd = "make:middleware", desc = "Create a new HTTP middleware class"},
    {name = "MakeMigration", cmd = "make:migration", desc = "Create a new migration file"},
    {name = "MakeNotification", cmd = "make:notification", desc = "Create a new notification class"},
    {name = "MakeNotificationsTable", cmd = "make:notifications-table", desc = "Create a migration for the notifications table"},
    {name = "MakeObserver", cmd = "make:observer", desc = "Create a new observer class"},
    {name = "MakePolicy", cmd = "make:policy", desc = "Create a new policy class"},
    {name = "MakeProvider", cmd = "make:provider", desc = "Create a new service provider class"},
    {name = "MakeQueueBatchesTable", cmd = "make:queue-batches-table", desc = "Create a migration for the batches database table"},
    {name = "MakeQueueFailedTable", cmd = "make:queue-failed-table", desc = "Create a migration for the failed queue jobs database table"},
    {name = "MakeQueueTable", cmd = "make:queue-table", desc = "Create a migration for the queue jobs database table"},
    {name = "MakeRequest", cmd = "make:request", desc = "Create a new form request class"},
    {name = "MakeResource", cmd = "make:resource", desc = "Create a new resource"},
    {name = "MakeRule", cmd = "make:rule", desc = "Create a new validation rule"},
    {name = "MakeScope", cmd = "make:scope", desc = "Create a new scope class"},
    {name = "MakeSeeder", cmd = "make:seeder", desc = "Create a new seeder class"},
    {name = "MakeSessionTable", cmd = "make:session-table", desc = "Create a migration for the session database table"},
    {name = "MakeTest", cmd = "make:test", desc = "Create a new test class"},
    {name = "MakeTrait", cmd = "make:trait", desc = "Create a new trait"},
    {name = "MakeView", cmd = "make:view", desc = "Create a new view"},

    {name = "MigrateFresh", cmd = "migrate:fresh", desc = "Drop all tables and re-run all migrations"},
    {name = "MigrateInstall", cmd = "migrate:install", desc = "Create the migration repository"},
    {name = "MigrateRefresh", cmd = "migrate:refresh", desc = "Reset and re-run all migrations"},
    {name = "MigrateReset", cmd = "migrate:reset", desc = "Rollback all database migrations"},
    {name = "MigrateRollback", cmd = "migrate:rollback", desc = "Rollback the last database migration"},
    {name = "MigrateStatus", cmd = "migrate:status", desc = "Show the status of each migration"},

    {name = "ModelPrune", cmd = "model:prune", desc = "Prune models that are no longer needed"},
    {name = "ModelShow", cmd = "model:show", desc = "Show information about an Eloquent model"},

    {name = "OptimizeClear", cmd = "optimize:clear", desc = "Remove the cached bootstrap files"},

    {name = "PackageDiscover", cmd = "package:discover", desc = "Rebuild the cached package manifest"},

    {name = "QueueClear", cmd = "queue:clear", desc = "Delete all of the jobs from the specified queue"},
    {name = "QueueFailed", cmd = "queue:failed", desc = "List all of the failed queue jobs"},
    {name = "QueueFlush", cmd = "queue:flush", desc = "Flush all of the failed queue jobs"},
    {name = "QueueForget", cmd = "queue:forget", desc = "Delete a failed queue job"},
    {name = "QueueListen", cmd = "queue:listen", desc = "Listen to a given queue"},
    {name = "QueueMonitor", cmd = "queue:monitor", desc = "Monitor the size of the specified queues"},
    {name = "QueuePruneBatches", cmd = "queue:prune-batches", desc = "Prune stale entries from the batches database"},
    {name = "QueuePruneFailed", cmd = "queue:prune-failed", desc = "Prune stale entries from the failed jobs table"},
    {name = "QueueRestart", cmd = "queue:restart", desc = "Restart queue worker daemons after their current job"},
    {name = "QueueRetry", cmd = "queue:retry", desc = "Retry a failed queue job"},
    {name = "QueueRetryBatch", cmd = "queue:retry-batch", desc = "Retry the failed jobs for a batch"},
    {name = "QueueWork", cmd = "queue:work", desc = "Start processing jobs on the queue as a daemon"},

    {name = "RouteCache", cmd = "route:cache", desc = "Create a route cache file for faster route registration"},
    {name = "RouteClear", cmd = "route:clear", desc = "Remove the route cache file"},
    {name = "RouteList", cmd = "route:list", desc = "List all registered routes"},

    {name = "SailAdd", cmd = "sail:add", desc = "Add a service to an existing Sail installation"},
    {name = "SailInstall", cmd = "sail:install", desc = "Install Laravel Sail's default Docker Compose file"},
    {name = "SailPublish", cmd = "sail:publish", desc = "Publish the Laravel Sail Docker files"},

    {name = "SanctumPruneExpired", cmd = "sanctum:prune-expired", desc = "Prune tokens expired for more than specified number of hours"},

    {name = "ScheduleClearCache", cmd = "schedule:clear-cache", desc = "Delete the cached mutex files created by scheduler"},
    {name = "ScheduleInterrupt", cmd = "schedule:interrupt", desc = "Interrupt the current schedule run"},
    {name = "ScheduleList", cmd = "schedule:list", desc = "List all scheduled tasks"},
    {name = "ScheduleRun", cmd = "schedule:run", desc = "Run the scheduled commands"},
    {name = "ScheduleTest", cmd = "schedule:test", desc = "Run a scheduled command"},
    {name = "ScheduleWork", cmd = "schedule:work", desc = "Start the schedule worker"},

    {name = "SchemaDump", cmd = "schema:dump", desc = "Dump the given database schema"},

    {name = "StorageLink", cmd = "storage:link", desc = "Create the symbolic links configured for the application"},
    {name = "StorageUnlink", cmd = "storage:unlink", desc = "Delete existing symbolic links configured for the application"},

    {name = "StubPublish", cmd = "stub:publish", desc = "Publish all stubs that are available for customization"},

    {name = "VendorPublish", cmd = "vendor:publish", desc = "Publish any publishable assets from vendor packages"},

    {name = "ViewCache", cmd = "view:cache", desc = "Compile all of the application's Blade templates"},
    {name = "ViewClear", cmd = "view:clear", desc = "Clear all compiled view files"},
}

for _, entry in ipairs(commands) do
    vim.api.nvim_create_user_command("Artisan" .. entry.name, function(opts)
        if entry.make then
            laravim.make(entry.file_type, opts.args)
        else
            laravim.artisan(entry.cmd, opts.args)
        end
    end, {nargs = "*", desc = entry.desc})
end

vim.keymap.set("n", "<leader>amm", ":ArtisanMakeModel")
vim.keymap.set("n", "<leader>amc", ":ArtisanMakeController")
vim.keymap.set("n", "<leader>ar", ":Artisan<CR>")

local function run_command(entry)
    local args = vim.fn.input("Arguments: ")
    if entry.make then
        laravim.make(entry.file_type, args)
    else
        laravim.artisan(entry.cmd, args)
    end
end

vim.api.nvim_create_user_command("Artisan", function()
    local has_telescope = pcall(require, "telescope")
    if has_telescope then
        local pickers = require("telescope.pickers")
        local finders = require("telescope.finders")
        local actions = require("telescope.actions")
        local action_state = require("telescope.actions.state")
        local conf = require("telescope.config").values

        pickers.new({}, {
            prompt_title = "Artisan Commands",
            finder = finders.new_table({
                results = commands,
                entry_maker = function(entry)
                    return {
                        value = entry,
                        display = "Artisan" .. entry.name .. ": " .. entry.desc,
                        ordinal = "Artisan" .. entry.name .. " " .. entry.desc,
                    }
                end,
            }),
            sorter = conf.generic_sorter({}),
            attach_mappings = function(prompt_bufnr)
                actions.select_default:replace(function()
                    local selection = action_state.get_selected_entry()
                    if selection then
                        run_command(selection.value)
                    end
                    actions.close(prompt_bufnr)
                end)
                return true
            end,
        }):find()
    else
        vim.fn.setqflist({}, " ", {
            title = "Artisan Commands",
            items = vim.iter(commands):enumerate():map(function(i, entry)
                return {
                    filename = "Artisan" .. entry.name,
                    lnum = i,
                    text = entry.desc,
                }
            end):totable(),
        })
        vim.cmd("botright copen")
        vim.schedule(function()
            local bufnr = vim.api.nvim_get_current_buf()
            vim.keymap.set("n", "<CR>", function()
                local line = vim.fn.line(".")
                local entry = commands[line]
                if entry then
                    vim.cmd("cclose")
                    run_command(entry)
                end
            end, {buffer = bufnr, noremap = true, silent = true})
        end)
    end
end, {desc = "Select and run an Artisan command"})
