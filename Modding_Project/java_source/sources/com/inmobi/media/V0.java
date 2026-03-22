package com.inmobi.media;

import androidx.annotation.VisibleForTesting;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes5.dex */
public final class V0 {

    /* renamed from: a  reason: collision with root package name */
    public final String f24293a;

    /* renamed from: b  reason: collision with root package name */
    public String f24294b;

    /* renamed from: c  reason: collision with root package name */
    public Boolean f24295c;

    public V0() {
        String simpleName = V0.class.getSimpleName();
        this.f24293a = simpleName;
        Intrinsics.checkNotNull(simpleName);
    }

    @Nullable
    public final String a() {
        return this.f24294b;
    }

    public final String b() {
        return this.f24293a;
    }

    @Nullable
    public final Boolean c() {
        return this.f24295c;
    }

    public final void a(@Nullable String str) {
        this.f24294b = str;
    }

    @VisibleForTesting(otherwise = 4)
    public final void a(boolean z10) {
        Intrinsics.checkNotNull(this.f24293a);
        this.f24295c = Boolean.valueOf(z10);
    }
}
