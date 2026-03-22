package com.hades.aar.auth.base;

import java.io.Serializable;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes5.dex */
public final class AuthUser implements Serializable {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private String f21740a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private String f21741b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private String f21742c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private String f21743d;

    public final void b(@Nullable String str) {
        this.f21741b = str;
    }

    public final void d(@Nullable String str) {
        this.f21743d = str;
    }

    public final void e(@Nullable String str) {
        this.f21742c = str;
    }

    public final void f(@Nullable String str) {
        this.f21740a = str;
    }

    @NotNull
    public String toString() {
        return "AuthUser(username=" + this.f21740a + ", avatar=" + this.f21741b + ", gender=" + this.f21742c + ", birthday=" + this.f21743d + ')';
    }
}
