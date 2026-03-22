package com.startshorts.androidplayer.manager.player.feature;

import com.ss.ttm.player.BufferProcessCallback;
import com.ss.ttvideoengine.TTVideoEngine;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.player.feature.IVideoPlayerFeature;
import com.startshorts.androidplayer.manager.player.feature.decryptor.DecryptResult;
import com.startshorts.androidplayer.manager.player.feature.decryptor.DecryptState;
import fk.u;
import java.nio.ByteBuffer;
import java.util.Collection;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import lf.s;
import org.jetbrains.annotations.NotNull;
/* compiled from: DecryptFeature.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDecryptFeature.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DecryptFeature.kt\ncom/startshorts/androidplayer/manager/player/feature/DecryptFeature\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,164:1\n1863#2,2:165\n*S KotlinDebug\n*F\n+ 1 DecryptFeature.kt\ncom/startshorts/androidplayer/manager/player/feature/DecryptFeature\n*L\n147#1:165,2\n*E\n"})
/* loaded from: classes6.dex */
public final class d extends com.startshorts.androidplayer.manager.player.feature.b {
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public static final a f42715f = new a(null);

    /* renamed from: d  reason: collision with root package name */
    private boolean f42716d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final ConcurrentHashMap<String, b> f42717e = new ConcurrentHashMap<>();

    /* compiled from: DecryptFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DecryptFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class b {
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        public static final a f42718c = new a(null);
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final of.c f42719a;

        /* renamed from: b  reason: collision with root package name */
        private int f42720b;

        /* compiled from: DecryptFeature.kt */
        @Metadata
        /* loaded from: classes6.dex */
        public static final class a {
            public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private a() {
            }
        }

        public b(@NotNull of.c decryptor, int i10) {
            Intrinsics.checkNotNullParameter(decryptor, "decryptor");
            this.f42719a = decryptor;
            this.f42720b = i10;
        }

        @NotNull
        public final of.c a() {
            return this.f42719a;
        }

        public final int b() {
            return this.f42720b;
        }

        public final void c(int i10) {
            this.f42720b = i10;
        }

        public /* synthetic */ b(of.c cVar, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this(cVar, (i11 & 2) != 0 ? -9999999 : i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final b h(String str) {
        if (str != null && str.length() != 0) {
            return this.f42717e.get(str);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final b j(String str) {
        if (str != null && str.length() != 0) {
            return this.f42717e.remove(str);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void k(String str, b bVar) {
        this.f42717e.put(str, bVar);
    }

    @Override // com.startshorts.androidplayer.manager.player.feature.b, com.startshorts.androidplayer.manager.player.feature.IVideoPlayerFeature
    public void a(@NotNull TTVideoEngine player, @NotNull s params) {
        Intrinsics.checkNotNullParameter(player, "player");
        Intrinsics.checkNotNullParameter(params, "params");
        super.a(player, params);
        player.setIntOption(TTVideoEngineInterface.PLAYER_OPTION_ALLOW_ALL_PROTO_NAME, 1);
        player.setStringOption(TTVideoEngineInterface.PLAYER_OPTION_BUFFER_PROCESS_PROTO_NAME, "jiuzhou");
        player.setStringOption(TTVideoEngineInterface.PLAYER_OPTION_BUFFER_PROCESS_COVERT_ORDER, "21");
        player.setBufferProcessCallback(new c());
    }

    @Override // com.startshorts.androidplayer.manager.player.feature.b, com.startshorts.androidplayer.manager.player.feature.IVideoPlayerFeature
    public void release() {
        super.release();
        Logger.f41511a.h("DecryptFeature", "release");
        this.f42716d = true;
        TTVideoEngine b10 = b();
        if (b10 != null) {
            b10.setBufferProcessCallback(null);
        }
        Collection<b> values = this.f42717e.values();
        Intrinsics.checkNotNullExpressionValue(values, "<get-values>(...)");
        for (b bVar : values) {
            bVar.a().h();
        }
        this.f42717e.clear();
    }

    @Override // com.startshorts.androidplayer.manager.player.feature.IVideoPlayerFeature
    @NotNull
    public IVideoPlayerFeature.FeatureType type() {
        return IVideoPlayerFeature.FeatureType.DECRYPT;
    }

    /* compiled from: DecryptFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class c extends BufferProcessCallback {
        c() {
        }

        @Override // com.ss.ttm.player.BufferProcessCallback
        public void closed(String str, int i10) {
            of.c a10;
            d dVar = d.this;
            dVar.i("closed -> url(" + str + ") ret(" + i10 + ')');
            b j10 = d.this.j(str);
            if (j10 != null && (a10 = j10.a()) != null) {
                a10.h();
            }
        }

        @Override // com.ss.ttm.player.BufferProcessCallback
        public boolean isChunk(String str) {
            return true;
        }

        @Override // com.ss.ttm.player.BufferProcessCallback
        public void opened(String str, int i10) {
            if (d.this.f42716d) {
                return;
            }
            d dVar = d.this;
            dVar.i("opened -> url(" + str + ") ret(" + i10 + ')');
            if (d.this.h(str) == null && str != null && str.length() != 0) {
                d dVar2 = d.this;
                dVar2.i("create session -> " + str);
                of.c cVar = new of.c(u.f51776a.b(), "shortmax00000000");
                cVar.i(new a(d.this));
                d.this.k(str, new b(cVar, 0, 2, null));
            }
        }

        @Override // com.ss.ttm.player.BufferProcessCallback
        public BufferProcessCallback.ProcessBufferResult processBuffer(String str, ByteBuffer byteBuffer) {
            b h10 = d.this.h(str);
            if (h10 == null) {
                BufferProcessCallback.ProcessBufferResult processBufferResult = new BufferProcessCallback.ProcessBufferResult();
                processBufferResult.ret = -100404;
                return processBufferResult;
            }
            DecryptResult g10 = h10.a().g(byteBuffer);
            BufferProcessCallback.ProcessBufferResult processBufferResult2 = new BufferProcessCallback.ProcessBufferResult();
            int b10 = g10.b();
            if (b10 != -2) {
                if (b10 != -1) {
                    processBufferResult2.ret = g10.b();
                    processBufferResult2.buffer = g10.a();
                } else {
                    processBufferResult2.ret = -11;
                }
            } else {
                processBufferResult2.ret = 0;
            }
            return processBufferResult2;
        }

        @Override // com.ss.ttm.player.BufferProcessCallback
        public void readed(String str, int i10) {
            b h10 = d.this.h(str);
            if (h10 == null) {
                return;
            }
            if (h10.b() == -9999999) {
                h10.a().j(DecryptState.START);
            }
            if (i10 == 0) {
                h10.a().j(DecryptState.END);
            }
            h10.c(i10);
        }

        @Override // com.ss.ttm.player.BufferProcessCallback
        public void seeked(String str, long j10, int i10) {
            d dVar = d.this;
            dVar.i("seeked -> url(" + str + ") ret(" + j10 + ") where(" + i10 + ')');
        }

        /* compiled from: DecryptFeature.kt */
        @Metadata
        /* loaded from: classes6.dex */
        public static final class a implements of.a {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ d f42722a;

            a(d dVar) {
                this.f42722a = dVar;
            }

            @Override // of.a
            public void b(String str) {
                this.f42722a.i(str);
            }

            @Override // of.a
            public void onError(String str) {
                Logger.f41511a.e("DecryptFeature", str);
            }

            @Override // of.a
            public void a(long j10) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void i(String str) {
    }
}
