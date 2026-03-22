package com.facebook.internal;

import android.content.Context;
import android.net.Uri;
import android.util.Log;
import com.google.ads.mediation.vungle.VungleConstants;
import java.util.Arrays;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ImageRequest.kt */
@Metadata
/* loaded from: classes3.dex */
public final class a0 {
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public static final c f16136f = new c(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Context f16137a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final Uri f16138b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final b f16139c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f16140d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final Object f16141e;

    /* compiled from: ImageRequest.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final Context f16142a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final Uri f16143b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private b f16144c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f16145d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        private Object f16146e;

        public a(@NotNull Context context, @NotNull Uri imageUri) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(imageUri, "imageUri");
            this.f16142a = context;
            this.f16143b = imageUri;
        }

        @NotNull
        public final a0 a() {
            Context context = this.f16142a;
            Uri uri = this.f16143b;
            b bVar = this.f16144c;
            boolean z10 = this.f16145d;
            Object obj = this.f16146e;
            if (obj == null) {
                obj = new Object();
            } else if (obj == null) {
                throw new IllegalStateException("Required value was null.");
            }
            return new a0(context, uri, bVar, z10, obj, null);
        }

        @NotNull
        public final a b(boolean z10) {
            this.f16145d = z10;
            return this;
        }

        @NotNull
        public final a c(@Nullable b bVar) {
            this.f16144c = bVar;
            return this;
        }

        @NotNull
        public final a d(@Nullable Object obj) {
            this.f16146e = obj;
            return this;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (Intrinsics.areEqual(this.f16142a, aVar.f16142a) && Intrinsics.areEqual(this.f16143b, aVar.f16143b)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (this.f16142a.hashCode() * 31) + this.f16143b.hashCode();
        }

        @NotNull
        public String toString() {
            return "Builder(context=" + this.f16142a + ", imageUri=" + this.f16143b + ')';
        }
    }

    /* compiled from: ImageRequest.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public interface b {
        void a(@Nullable b0 b0Var);
    }

    /* compiled from: ImageRequest.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class c {
        public /* synthetic */ c(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Uri a(@Nullable String str, int i10, int i11, @Nullable String str2) {
            v0.k(str, VungleConstants.KEY_USER_ID);
            int max = Math.max(i10, 0);
            int max2 = Math.max(i11, 0);
            if (max == 0 && max2 == 0) {
                throw new IllegalArgumentException("Either width or height must be greater than 0");
            }
            Uri.Builder buildUpon = Uri.parse(o0.h()).buildUpon();
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            String format = String.format(Locale.US, "%s/%s/picture", Arrays.copyOf(new Object[]{com.facebook.v.x(), str}, 2));
            Intrinsics.checkNotNullExpressionValue(format, "format(locale, format, *args)");
            Uri.Builder path = buildUpon.path(format);
            if (max2 != 0) {
                path.appendQueryParameter("height", String.valueOf(max2));
            }
            if (max != 0) {
                path.appendQueryParameter("width", String.valueOf(max));
            }
            path.appendQueryParameter("migration_overrides", "{october_2012:true}");
            if (!u0.d0(str2)) {
                path.appendQueryParameter("access_token", str2);
            } else if (!u0.d0(com.facebook.v.s()) && !u0.d0(com.facebook.v.m())) {
                path.appendQueryParameter("access_token", com.facebook.v.m() + '|' + com.facebook.v.s());
            } else {
                Log.d("ImageRequest", "Needs access token to fetch profile picture. Without an access token a default silhoutte picture is returned");
            }
            Uri build = path.build();
            Intrinsics.checkNotNullExpressionValue(build, "builder.build()");
            return build;
        }

        private c() {
        }
    }

    public /* synthetic */ a0(Context context, Uri uri, b bVar, boolean z10, Object obj, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, uri, bVar, z10, obj);
    }

    @Nullable
    public final b a() {
        return this.f16139c;
    }

    @NotNull
    public final Object b() {
        return this.f16141e;
    }

    @NotNull
    public final Uri c() {
        return this.f16138b;
    }

    public final boolean d() {
        return this.f16140d;
    }

    private a0(Context context, Uri uri, b bVar, boolean z10, Object obj) {
        this.f16137a = context;
        this.f16138b = uri;
        this.f16139c = bVar;
        this.f16140d = z10;
        this.f16141e = obj;
    }
}
