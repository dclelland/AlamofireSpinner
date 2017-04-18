# AlamofireSpinner

Tiny Alamofire plugin that starts and stops the network activity indicator.

Note: This pod is now deprecated in favour of [AlamofireNetworkActivityIndicator](https://github.com/Alamofire/AlamofireNetworkActivityIndicator).

### Examples

✓ Extremely simple, just call `spin()` on your request.

```swift

Alamofire.request(.GET, "http://myapi.com/users").spin().responseJSON { response in
    print(response)
}

```

That's it!
