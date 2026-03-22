package com.android.billingclient.api;

import androidx.annotation.Nullable;
/* compiled from: com.android.billingclient:billing@@8.0.0 */
/* loaded from: classes2.dex */
public final class AccountIdentifiers {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final String f6444a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final String f6445b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AccountIdentifiers(@Nullable String str, @Nullable String str2) {
        this.f6444a = str;
        this.f6445b = str2;
    }

    @Nullable
    public String getObfuscatedAccountId() {
        return this.f6444a;
    }

    @Nullable
    public String getObfuscatedProfileId() {
        return this.f6445b;
    }
}
