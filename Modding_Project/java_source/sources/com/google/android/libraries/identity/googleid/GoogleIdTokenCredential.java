package com.google.android.libraries.identity.googleid;

import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.credentials.CustomCredential;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: com.google.android.libraries.identity.googleid:googleid@@1.1.0 */
@Metadata
/* loaded from: classes5.dex */
public final class GoogleIdTokenCredential extends CustomCredential {
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public static final b f19640h = new b(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f19641a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final String f19642b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final String f19643c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final String f19644d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private final String f19645e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private final Uri f19646f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private final String f19647g;

    /* compiled from: com.google.android.libraries.identity.googleid:googleid@@1.1.0 */
    @Metadata
    /* loaded from: classes5.dex */
    public static final class a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private String f19648a = "";
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private String f19649b = "";
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private String f19650c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private String f19651d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        private String f19652e;
        @Nullable

        /* renamed from: f  reason: collision with root package name */
        private Uri f19653f;
        @Nullable

        /* renamed from: g  reason: collision with root package name */
        private String f19654g;

        @NotNull
        public final GoogleIdTokenCredential a() {
            return new GoogleIdTokenCredential(this.f19648a, this.f19649b, this.f19650c, this.f19651d, this.f19652e, this.f19653f, this.f19654g);
        }

        @NotNull
        public final a b(@Nullable String str) {
            this.f19650c = str;
            return this;
        }

        @NotNull
        public final a c(@Nullable String str) {
            this.f19651d = str;
            return this;
        }

        @NotNull
        public final a d(@Nullable String str) {
            this.f19652e = str;
            return this;
        }

        @NotNull
        public final a e(@NonNull String id2) {
            Intrinsics.checkNotNullParameter(id2, "id");
            this.f19648a = id2;
            return this;
        }

        @NotNull
        public final a f(@NonNull String idToken) {
            Intrinsics.checkNotNullParameter(idToken, "idToken");
            this.f19649b = idToken;
            return this;
        }

        @NotNull
        public final a g(@Nullable String str) {
            this.f19654g = str;
            return this;
        }

        @NotNull
        public final a h(@Nullable Uri uri) {
            this.f19653f = uri;
            return this;
        }
    }

    /* compiled from: com.google.android.libraries.identity.googleid:googleid@@1.1.0 */
    @Metadata
    /* loaded from: classes5.dex */
    public static final class b {
        public /* synthetic */ b(@NonNull DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public GoogleIdTokenCredential(@androidx.annotation.NonNull java.lang.String r3, @androidx.annotation.NonNull java.lang.String r4, @org.jetbrains.annotations.Nullable java.lang.String r5, @org.jetbrains.annotations.Nullable java.lang.String r6, @org.jetbrains.annotations.Nullable java.lang.String r7, @org.jetbrains.annotations.Nullable android.net.Uri r8, @org.jetbrains.annotations.Nullable java.lang.String r9) {
        /*
            r2 = this;
            java.lang.String r0 = "id"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            java.lang.String r1 = "idToken"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r1)
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r1)
            android.os.Bundle r0 = new android.os.Bundle
            r0.<init>()
            java.lang.String r1 = "com.google.android.libraries.identity.googleid.BUNDLE_KEY_ID"
            r0.putString(r1, r3)
            java.lang.String r1 = "com.google.android.libraries.identity.googleid.BUNDLE_KEY_ID_TOKEN"
            r0.putString(r1, r4)
            java.lang.String r1 = "com.google.android.libraries.identity.googleid.BUNDLE_KEY_DISPLAY_NAME"
            r0.putString(r1, r5)
            java.lang.String r1 = "com.google.android.libraries.identity.googleid.BUNDLE_KEY_FAMILY_NAME"
            r0.putString(r1, r6)
            java.lang.String r1 = "com.google.android.libraries.identity.googleid.BUNDLE_KEY_GIVEN_NAME"
            r0.putString(r1, r7)
            java.lang.String r1 = "com.google.android.libraries.identity.googleid.BUNDLE_KEY_PHONE_NUMBER"
            r0.putString(r1, r9)
            java.lang.String r1 = "com.google.android.libraries.identity.googleid.BUNDLE_KEY_PROFILE_PICTURE_URI"
            r0.putParcelable(r1, r8)
            java.lang.String r1 = "com.google.android.libraries.identity.googleid.TYPE_GOOGLE_ID_TOKEN_CREDENTIAL"
            r2.<init>(r1, r0)
            r2.f19641a = r3
            r2.f19642b = r4
            r2.f19643c = r5
            r2.f19644d = r6
            r2.f19645e = r7
            r2.f19646f = r8
            r2.f19647g = r9
            int r3 = r3.length()
            if (r3 <= 0) goto L60
            int r3 = r4.length()
            if (r3 <= 0) goto L58
            return
        L58:
            java.lang.IllegalArgumentException r3 = new java.lang.IllegalArgumentException
            java.lang.String r4 = "idToken should not be empty"
            r3.<init>(r4)
            throw r3
        L60:
            java.lang.IllegalArgumentException r3 = new java.lang.IllegalArgumentException
            java.lang.String r4 = "id should not be empty"
            r3.<init>(r4)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.libraries.identity.googleid.GoogleIdTokenCredential.<init>(java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, android.net.Uri, java.lang.String):void");
    }
}
