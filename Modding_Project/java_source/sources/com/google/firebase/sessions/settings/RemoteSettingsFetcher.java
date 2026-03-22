package com.google.firebase.sessions.settings;

import android.net.Uri;
import gt.e;
import j9.b;
import java.net.URL;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
import rs.c;
/* compiled from: RemoteSettingsFetcher.kt */
@Metadata
/* loaded from: classes5.dex */
public final class RemoteSettingsFetcher implements m9.a {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final a f21650c = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final b f21651a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final CoroutineContext f21652b;

    /* compiled from: RemoteSettingsFetcher.kt */
    @Metadata
    /* loaded from: classes5.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public RemoteSettingsFetcher(@NotNull b appInfo, @o7.b @NotNull CoroutineContext blockingDispatcher) {
        Intrinsics.checkNotNullParameter(appInfo, "appInfo");
        Intrinsics.checkNotNullParameter(blockingDispatcher, "blockingDispatcher");
        this.f21651a = appInfo;
        this.f21652b = blockingDispatcher;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final URL c() {
        return new URL(new Uri.Builder().scheme("https").authority("firebase-settings.crashlytics.com").appendPath("spi").appendPath("v2").appendPath("platforms").appendPath("android").appendPath("gmp").appendPath(this.f21651a.b()).appendPath("settings").appendQueryParameter("build_version", this.f21651a.a().a()).appendQueryParameter("display_version", this.f21651a.a().f()).build().toString());
    }

    @Override // m9.a
    @Nullable
    public Object a(@NotNull Map<String, String> map, @NotNull Function2<? super JSONObject, ? super c<? super Unit>, ? extends Object> function2, @NotNull Function2<? super String, ? super c<? super Unit>, ? extends Object> function22, @NotNull c<? super Unit> cVar) {
        Object g10 = e.g(this.f21652b, new RemoteSettingsFetcher$doConfigFetch$2(this, map, function2, function22, null), cVar);
        if (g10 == kotlin.coroutines.intrinsics.a.f()) {
            return g10;
        }
        return Unit.f60915a;
    }
}
