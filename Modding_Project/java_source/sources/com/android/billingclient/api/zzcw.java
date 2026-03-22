package com.android.billingclient.api;

import androidx.annotation.Nullable;
import java.util.List;
/* compiled from: com.android.billingclient:billing@@8.0.0 */
/* loaded from: classes2.dex */
public final class zzcw {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final List f6704a;

    /* renamed from: b  reason: collision with root package name */
    private final BillingResult f6705b;

    public zzcw(BillingResult billingResult, @Nullable List list) {
        this.f6704a = list;
        this.f6705b = billingResult;
    }

    public final BillingResult zza() {
        return this.f6705b;
    }

    @Nullable
    public final List zzb() {
        return this.f6704a;
    }
}
