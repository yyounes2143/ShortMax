package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid;

import android.net.Uri;
import android.text.TextUtils;
import androidx.compose.runtime.internal.StabilityInferred;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.moloco.sdk.internal.g0;
import com.vungle.ads.internal.presenter.MRAIDPresenter;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Result;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 1)
/* loaded from: classes6.dex */
public abstract class x {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final b f34384b = new b(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final String f34385a;

    @StabilityInferred(parameters = 1)
    /* loaded from: classes6.dex */
    public static final class a extends x {
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        public static final a f34386c = new a();

        public a() {
            super("close", null);
        }
    }

    @SourceDebugExtension({"SMAP\nMraidJsCommand.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MraidJsCommand.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/MraidJsCommand$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,122:1\n1#2:123\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class b {

        @StabilityInferred(parameters = 1)
        /* loaded from: classes6.dex */
        public static final class a {

            /* renamed from: a  reason: collision with root package name */
            public final boolean f34387a;
            @NotNull

            /* renamed from: b  reason: collision with root package name */
            public final String f34388b;

            public a(boolean z10, @NotNull String description) {
                Intrinsics.checkNotNullParameter(description, "description");
                this.f34387a = z10;
                this.f34388b = description;
            }

            public final boolean a() {
                return this.f34387a;
            }
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final g0<x, a> a(@Nullable String str) {
            Object d10;
            try {
                Result.a aVar = Result.f60901b;
                d10 = Result.d(Uri.parse(str));
            } catch (Throwable th2) {
                Result.a aVar2 = Result.f60901b;
                d10 = Result.d(kotlin.f.a(th2));
            }
            Object obj = null;
            if (Result.i(d10)) {
                d10 = null;
            }
            Uri uri = (Uri) d10;
            if (uri == null) {
                return new g0.a(new a(false, "Invalid url: " + str));
            } else if (!Intrinsics.areEqual(uri.getScheme(), CampaignEx.JSON_KEY_MRAID)) {
                return new g0.a(new a(false, "Non-mraid url scheme: " + str));
            } else {
                Map<String, String> d11 = d(uri);
                String host = uri.getHost();
                if (host != null) {
                    switch (host.hashCode()) {
                        case -1289167206:
                            if (host.equals("expand")) {
                                obj = b(d11);
                                break;
                            }
                            break;
                        case -934437708:
                            if (host.equals("resize")) {
                                c();
                                break;
                            }
                            break;
                        case 3417674:
                            if (host.equals(MRAIDPresenter.OPEN)) {
                                obj = e(d11);
                                break;
                            }
                            break;
                        case 94756344:
                            if (host.equals("close")) {
                                obj = a.f34386c;
                                break;
                            }
                            break;
                        case 133423073:
                            if (host.equals(MRAIDPresenter.SET_ORIENTATION_PROPERTIES)) {
                                obj = f(d11);
                                break;
                            }
                            break;
                    }
                }
                if (obj != null) {
                    return new g0.b(obj);
                }
                return new g0.a(new a(true, "Unknown/unsupported mraid command " + uri.getHost()));
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final c b(Map<String, String> map) {
            Uri uri;
            String str = map.get("url");
            Uri uri2 = null;
            if (str != null) {
                try {
                    Result.a aVar = Result.f60901b;
                    uri = Result.d(Uri.parse(str));
                } catch (Throwable th2) {
                    Result.a aVar2 = Result.f60901b;
                    uri = Result.d(kotlin.f.a(th2));
                }
                if (!Result.i(uri)) {
                    uri2 = uri;
                }
                uri2 = uri2;
            }
            return new c(uri2);
        }

        public final e c() {
            return null;
        }

        public final Map<String, String> d(Uri uri) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (String str : uri.getQueryParameterNames()) {
                linkedHashMap.put(str, TextUtils.join(",", uri.getQueryParameters(str)));
            }
            return linkedHashMap;
        }

        public final d e(Map<String, String> map) {
            Object d10;
            String str = map.get("url");
            d dVar = null;
            if (str == null) {
                return null;
            }
            try {
                Result.a aVar = Result.f60901b;
                Uri parse = Uri.parse(str);
                Intrinsics.checkNotNullExpressionValue(parse, "parse(...)");
                d10 = Result.d(new d(parse));
            } catch (Throwable th2) {
                Result.a aVar2 = Result.f60901b;
                d10 = Result.d(kotlin.f.a(th2));
            }
            if (!Result.i(d10)) {
                dVar = d10;
            }
            return dVar;
        }

        public final f f(Map<String, String> map) {
            Boolean u12;
            String str = map.get("allowOrientationChange");
            if (str == null || (u12 = StringsKt.u1(str)) == null) {
                return null;
            }
            boolean booleanValue = u12.booleanValue();
            p a10 = p.f34323a.a(map.get("forceOrientation"));
            if (a10 == null) {
                return null;
            }
            return new f(booleanValue, a10);
        }

        public b() {
        }
    }

    @StabilityInferred(parameters = 0)
    /* loaded from: classes6.dex */
    public static final class c extends x {
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        public final Uri f34389c;

        public c(@Nullable Uri uri) {
            super("expand", null);
            this.f34389c = uri;
        }

        @Nullable
        public final Uri c() {
            return this.f34389c;
        }
    }

    @StabilityInferred(parameters = 0)
    /* loaded from: classes6.dex */
    public static final class d extends x {
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        public final Uri f34390c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(@NotNull Uri uri) {
            super(MRAIDPresenter.OPEN, null);
            Intrinsics.checkNotNullParameter(uri, "uri");
            this.f34390c = uri;
        }

        @NotNull
        public final Uri c() {
            return this.f34390c;
        }
    }

    @StabilityInferred(parameters = 1)
    /* loaded from: classes6.dex */
    public static final class e extends x {
    }

    @StabilityInferred(parameters = 1)
    /* loaded from: classes6.dex */
    public static final class f extends x {

        /* renamed from: c  reason: collision with root package name */
        public final boolean f34391c;
        @NotNull

        /* renamed from: d  reason: collision with root package name */
        public final p f34392d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(boolean z10, @NotNull p forceOrientation) {
            super(MRAIDPresenter.SET_ORIENTATION_PROPERTIES, null);
            Intrinsics.checkNotNullParameter(forceOrientation, "forceOrientation");
            this.f34391c = z10;
            this.f34392d = forceOrientation;
        }

        public final boolean c() {
            return this.f34391c;
        }

        @NotNull
        public final p d() {
            return this.f34392d;
        }
    }

    public /* synthetic */ x(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(str);
    }

    @NotNull
    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.ad.orientation.b a(@NotNull f fVar) {
        Intrinsics.checkNotNullParameter(fVar, "<this>");
        return new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.ad.orientation.b(z.a(fVar.d()), fVar.c());
    }

    @NotNull
    public final String b() {
        return this.f34385a;
    }

    public x(String str) {
        this.f34385a = str;
    }
}
