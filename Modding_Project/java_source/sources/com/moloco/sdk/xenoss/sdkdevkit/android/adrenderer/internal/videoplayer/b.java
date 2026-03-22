package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer;

import a7.k;
import a7.y;
import android.net.Uri;
import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.internal.MolocoLogger;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.n;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.stream.h;
import gt.g0;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class b implements a7.h {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final String f36372a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final n f36373b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final String f36374c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public RandomAccessFile f36375d;

    /* renamed from: e  reason: collision with root package name */
    public long f36376e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f36377f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f36378g;

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer.ProgressiveMediaFileDataSource$open$1", f = "ProgressiveMediaFileDataSource.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class a extends SuspendLambda implements Function2<g0, rs.c<? super Long>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f36379h;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ k f36381j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(k kVar, rs.c<? super a> cVar) {
            super(2, cVar);
            this.f36381j = kVar;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Long> cVar) {
            return ((a) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new a(this.f36381j, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            File a10;
            kotlin.coroutines.intrinsics.a.f();
            if (this.f36379h == 0) {
                kotlin.f.b(obj);
                try {
                    b bVar = b.this;
                    com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.stream.h f10 = bVar.f(bVar.f36372a);
                    if (f10 instanceof h.a) {
                        a10 = ((h.a) f10).a();
                    } else if (!(f10 instanceof h.c)) {
                        b.this.f36378g = true;
                        MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
                        String str = b.this.f36374c;
                        MolocoLogger.error$default(molocoLogger, str, "Failed to download file: " + b.this.f36372a, null, false, 12, null);
                        throw new IOException("Cannot read file: " + b.this.f36372a);
                    } else {
                        a10 = ((h.c) f10).a();
                    }
                    if (a10.exists()) {
                        b bVar2 = b.this;
                        RandomAccessFile randomAccessFile = new RandomAccessFile(a10, "r");
                        randomAccessFile.seek(this.f36381j.f204g);
                        bVar2.i(randomAccessFile);
                        b bVar3 = b.this;
                        long j10 = this.f36381j.f205h;
                        if (j10 == -1) {
                            j10 = a10.length() - this.f36381j.f204g;
                        }
                        bVar3.f36376e = j10;
                        if (b.this.f36376e == 0 && b.this.k(f10)) {
                            MolocoLogger.info$default(MolocoLogger.INSTANCE, b.this.f36374c, "Streaming error likely detected", null, false, 12, null);
                            b.this.f36378g = true;
                        }
                        return kotlin.coroutines.jvm.internal.a.e(b.this.f36376e);
                    }
                    throw new IOException("Cannot read file, does not exist yet: " + b.this.f36372a);
                } catch (IOException e10) {
                    MolocoLogger molocoLogger2 = MolocoLogger.INSTANCE;
                    String str2 = b.this.f36374c;
                    MolocoLogger.error$default(molocoLogger2, str2, "Failed to open file: " + b.this.f36372a, e10, false, 8, null);
                    throw e10;
                }
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer.ProgressiveMediaFileDataSource$streamingStatus$1", f = "ProgressiveMediaFileDataSource.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer.b$b  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public static final class C0587b extends SuspendLambda implements Function2<g0, rs.c<? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.stream.h>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f36382h;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ String f36384j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0587b(String str, rs.c<? super C0587b> cVar) {
            super(2, cVar);
            this.f36384j = str;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.stream.h> cVar) {
            return ((C0587b) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new C0587b(this.f36384j, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f36382h == 0) {
                kotlin.f.b(obj);
                return b.this.f36373b.a(this.f36384j);
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public b(@NotNull String url, @NotNull n mediaCacheRepository) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(mediaCacheRepository, "mediaCacheRepository");
        this.f36372a = url;
        this.f36373b = mediaCacheRepository;
        this.f36374c = "ProgressiveMediaFileDataSource";
    }

    @Override // a7.h
    public long b(@NotNull k dataSpec) {
        Object b10;
        Intrinsics.checkNotNullParameter(dataSpec, "dataSpec");
        b10 = gt.f.b(null, new a(dataSpec, null), 1, null);
        return ((Number) b10).longValue();
    }

    @Override // a7.h
    public void c(@NotNull y transferListener) {
        Intrinsics.checkNotNullParameter(transferListener, "transferListener");
        MolocoLogger.info$default(MolocoLogger.INSTANCE, this.f36374c, "addTransferListener", null, false, 12, null);
    }

    @Override // a7.h
    public void close() {
        try {
            RandomAccessFile randomAccessFile = this.f36375d;
            if (randomAccessFile != null) {
                randomAccessFile.close();
            }
        } finally {
            this.f36375d = null;
        }
    }

    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.stream.h f(String str) {
        Object b10;
        b10 = gt.f.b(null, new C0587b(str, null), 1, null);
        return (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.stream.h) b10;
    }

    @Override // a7.h
    @Nullable
    public Uri getUri() {
        return Uri.parse(this.f36372a);
    }

    public final void i(@Nullable RandomAccessFile randomAccessFile) {
        this.f36375d = randomAccessFile;
    }

    public final boolean j() {
        return this.f36378g;
    }

    public final boolean k(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.stream.h hVar) {
        if (this.f36377f && (hVar instanceof h.c) && Intrinsics.areEqual(((h.c) hVar).b(), com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.stream.i.a())) {
            return true;
        }
        return false;
    }

    @Override // a7.f
    public int read(@NotNull byte[] buffer, int i10, int i11) {
        IOException iOException;
        int i12;
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        int i13 = 0;
        try {
            if (i11 == 0) {
                MolocoLogger.info$default(MolocoLogger.INSTANCE, this.f36374c, "Read length is 0", null, false, 12, null);
                return 0;
            } else if (this.f36376e == 0 && (f(this.f36372a) instanceof h.a)) {
                MolocoLogger.info$default(MolocoLogger.INSTANCE, this.f36374c, "Media stream is complete", null, false, 12, null);
                return -1;
            } else {
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.stream.h f10 = f(this.f36372a);
                if (f10 instanceof h.b) {
                    MolocoLogger.error$default(MolocoLogger.INSTANCE, this.f36374c, "Streaming failed: " + this.f36372a, null, false, 12, null);
                    this.f36378g = true;
                    return 0;
                }
                if (f10 instanceof h.a) {
                    RandomAccessFile randomAccessFile = this.f36375d;
                    if (randomAccessFile != null) {
                        i13 = randomAccessFile.read(buffer, i10, i11);
                    }
                    if (i13 > 0) {
                        this.f36377f = true;
                        this.f36376e -= i13;
                        return i13;
                    }
                    return i13;
                }
                loop0: while (true) {
                    i12 = 0;
                    while (i12 <= 0) {
                        try {
                            if (!(f(this.f36372a) instanceof h.c)) {
                                break loop0;
                            }
                            RandomAccessFile randomAccessFile2 = this.f36375d;
                            if (randomAccessFile2 != null) {
                                i12 = randomAccessFile2.read(buffer, i10, i11);
                            }
                        } catch (IOException e10) {
                            iOException = e10;
                            i13 = i12;
                            MolocoLogger.error$default(MolocoLogger.INSTANCE, this.f36374c, "Waiting for more data", iOException, false, 8, null);
                            return i13;
                        }
                    }
                }
                if (i12 > 0) {
                    this.f36377f = true;
                    this.f36376e -= i12;
                    return i12;
                }
                return i12;
            }
        } catch (IOException e11) {
            iOException = e11;
        }
    }
}
