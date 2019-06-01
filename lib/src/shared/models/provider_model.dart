class ProviderModel {
    String displayName;
    String providerId;
    String logoUri;

    ProviderModel({
        this.displayName,
        this.providerId,
        this.logoUri,
    });

    factory ProviderModel.fromJson(Map<String, dynamic> json) => new ProviderModel(
        displayName: json["display_name"] == null ? null : json["display_name"],
        providerId: json["provider_id"] == null ? null : json["provider_id"],
        logoUri: json["logo_uri"] == null ? null : json["logo_uri"],
    );

    Map<String, dynamic> toJson() => {
        "display_name": displayName == null ? null : displayName,
        "provider_id": providerId == null ? null : providerId,
        "logo_uri": logoUri == null ? null : logoUri,
    };
}
