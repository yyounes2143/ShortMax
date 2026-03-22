package com.startshorts.androidplayer.startup;

import android.content.Context;
import androidx.startup.Initializer;
import com.startshorts.androidplayer.utils.DeviceUtil;
import dd.d;
import dd.k;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: DataCacheInitializer.kt */
@Metadata
/* loaded from: classes7.dex */
public final class DataCacheInitializer extends BaseInitializer<Object> {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final a f44845b = new a(null);

    /* compiled from: DataCacheInitializer.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: DataCacheInitializer.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b implements d {
        b() {
        }

        @Override // dd.d
        public void a(String version, String cacheName) {
            Intrinsics.checkNotNullParameter(version, "version");
            Intrinsics.checkNotNullParameter(cacheName, "cacheName");
            DataCacheInitializer dataCacheInitializer = DataCacheInitializer.this;
            dataCacheInitializer.d("PersistentCache onInit version=" + version + ",cacheName=" + cacheName);
        }

        @Override // dd.d
        public void b(String key, Object obj) {
            Intrinsics.checkNotNullParameter(key, "key");
        }

        @Override // dd.d
        public void c(String key, Object obj) {
            Intrinsics.checkNotNullParameter(key, "key");
        }

        @Override // dd.d
        public void onError(String message) {
            Intrinsics.checkNotNullParameter(message, "message");
            DataCacheInitializer dataCacheInitializer = DataCacheInitializer.this;
            dataCacheInitializer.b("PersistentCache onError -> message=" + message + '.');
        }
    }

    /* compiled from: DataCacheInitializer.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c implements d {
        c() {
        }

        @Override // dd.d
        public void a(String version, String cacheName) {
            Intrinsics.checkNotNullParameter(version, "version");
            Intrinsics.checkNotNullParameter(cacheName, "cacheName");
            DataCacheInitializer dataCacheInitializer = DataCacheInitializer.this;
            dataCacheInitializer.d("MemoryCache onInit version=" + version + ",cacheName=" + cacheName);
        }

        @Override // dd.d
        public void b(String key, Object obj) {
            Intrinsics.checkNotNullParameter(key, "key");
        }

        @Override // dd.d
        public void c(String key, Object obj) {
            Intrinsics.checkNotNullParameter(key, "key");
        }

        @Override // dd.d
        public void onError(String message) {
            Intrinsics.checkNotNullParameter(message, "message");
            DataCacheInitializer dataCacheInitializer = DataCacheInitializer.this;
            dataCacheInitializer.b("MemoryCache onError -> message=" + message + '.');
        }
    }

    @Override // com.startshorts.androidplayer.startup.BaseInitializer
    @NotNull
    public String c() {
        return "DataCacheInitializer";
    }

    @Override // androidx.startup.Initializer
    @NotNull
    public List<Class<? extends Initializer<?>>> dependencies() {
        return CollectionsKt.t(LoggerInitializer.class);
    }

    @Override // com.startshorts.androidplayer.startup.BaseInitializer
    @NotNull
    public Object e(@NotNull Context context, boolean z10) {
        Intrinsics.checkNotNullParameter(context, "context");
        k.f50341a.m(context, "v1", id.a.f53392a.c(), new b());
        dd.c.f50337a.j(new c());
        ud.a.f68411a.a0(DeviceUtil.f48146a.L());
        return new Object();
    }
}
