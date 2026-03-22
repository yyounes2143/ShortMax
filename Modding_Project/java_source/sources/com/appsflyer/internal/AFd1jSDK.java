package com.appsflyer.internal;

import androidx.browser.trusted.sharing.ShareTarget;
import androidx.webkit.internal.AssetHelper;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata
/* loaded from: classes2.dex */
public enum AFd1jSDK {
    TEXT(AssetHelper.DEFAULT_MIME_TYPE),
    JSON("application/json"),
    OCTET_STREAM("application/octet-stream"),
    XML("application/xml"),
    HTML("text/html"),
    FORM(ShareTarget.ENCODING_TYPE_URL_ENCODED),
    IMAGE_JPEG("image/jpeg"),
    IMAGE_PNG("image/png");
    
    @NotNull
    public final String getCurrencyIso4217Code;

    AFd1jSDK(String str) {
        this.getCurrencyIso4217Code = str;
    }
}
