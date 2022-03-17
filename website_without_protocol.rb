def website_without_protocol
    match = /https?:\/\/(.+)/.match website
    return website unless match
    match[1]
end

puts website_without_protocol


#how does it know what 'website' is? you can put a string in a website instead of 'website'
# returns a MatchData object which acts like an array so have to call [1] on it. Do match.inspect to see object
