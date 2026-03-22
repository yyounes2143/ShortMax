package com.google.android.libraries.identity.googleid;

import androidx.annotation.NonNull;
import androidx.credentials.GetCustomCredentialOption;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: com.google.android.libraries.identity.googleid:googleid@@1.1.0 */
@Metadata
/* loaded from: classes5.dex */
public final class GetGoogleIdOption extends GetCustomCredentialOption {
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public static final a f19628h = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f19629a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final String f19630b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f19631c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final String f19632d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private final List f19633e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f19634f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean f19635g;

    /* compiled from: com.google.android.libraries.identity.googleid:googleid@@1.1.0 */
    @Metadata
    /* loaded from: classes5.dex */
    public static final class a {
        public /* synthetic */ a(@NonNull DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public final boolean a() {
        return this.f19635g;
    }

    public final boolean b() {
        return this.f19631c;
    }

    @androidx.annotation.Nullable
    public final List<String> c() {
        return this.f19633e;
    }

    @androidx.annotation.Nullable
    public final String d() {
        return this.f19632d;
    }

    @androidx.annotation.Nullable
    public final String e() {
        return this.f19630b;
    }

    public final boolean f() {
        return this.f19634f;
    }

    @NotNull
    public final String g() {
        return this.f19629a;
    }
}
