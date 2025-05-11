Set-LogFile "$PSScriptRoot\mcp_server.log"
function global:websearch {
    param(
        [string]$query
    )

    Invoke-ChatCompletion $query openai:gpt-4o-search-preview
}

Start-McpServer websearch