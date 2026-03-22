package com.google.android.libraries.identity.googleid;

import androidx.annotation.NonNull;
import androidx.credentials.GetCustomCredentialOption;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: com.google.android.libraries.identity.googleid:googleid@@1.1.0 */
@Metadata
/* loaded from: classes5.dex */
public final class GetSignInWithGoogleOption extends GetCustomCredentialOption {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final a f19636d = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f19637a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final String f19638b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final String f19639c;

    /* compiled from: com.google.android.libraries.identity.googleid:googleid@@1.1.0 */
    @Metadata
    /* loaded from: classes5.dex */
    public static final class a {
        public /* synthetic */ a(@NonNull DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @androidx.annotation.Nullable
    public final String a() {
        return this.f19638b;
    }

    @androidx.annotation.Nullable
    public final String b() {
        return this.f19639c;
    }

    @NotNull
    public final String c() {
        return this.f19637a;
    }
}
