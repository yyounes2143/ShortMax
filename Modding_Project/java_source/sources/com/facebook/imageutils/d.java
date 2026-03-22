package com.facebook.imageutils;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.ColorSpace;
import android.graphics.Rect;
import android.os.Build;
import android.util.Pair;
import androidx.core.util.Pools;
import com.facebook.common.memory.DecodeBufferHelper;
import java.io.InputStream;
import java.nio.ByteBuffer;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BitmapUtil.kt */
@Metadata
@SourceDebugExtension({"SMAP\nBitmapUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BitmapUtil.kt\ncom/facebook/imageutils/BitmapUtil\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,226:1\n1#2:227\n*E\n"})
/* loaded from: classes3.dex */
public final class d {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final d f16069a = new d();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final ms.i f16070b = kotlin.c.b(new Function0() { // from class: com.facebook.imageutils.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            Pools.SynchronizedPool b10;
            b10 = d.b();
            return b10;
        }
    });

    /* renamed from: c  reason: collision with root package name */
    private static boolean f16071c;

    /* renamed from: d  reason: collision with root package name */
    private static boolean f16072d;

    /* compiled from: BitmapUtil.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            Bitmap.Config config;
            Bitmap.Config config2;
            Bitmap.Config config3;
            int[] iArr = new int[Bitmap.Config.values().length];
            try {
                iArr[Bitmap.Config.ARGB_8888.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Bitmap.Config.ALPHA_8.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Bitmap.Config.ARGB_4444.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[Bitmap.Config.RGB_565.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                config3 = Bitmap.Config.RGBA_F16;
                iArr[config3.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                config2 = Bitmap.Config.RGBA_1010102;
                iArr[config2.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                config = Bitmap.Config.HARDWARE;
                iArr[config.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private d() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Pools.SynchronizedPool b() {
        return new Pools.SynchronizedPool(12);
    }

    private final ByteBuffer c() {
        if (f16071c) {
            return DecodeBufferHelper.f15313a.acquire();
        }
        return g().acquire();
    }

    @Nullable
    public static final Pair<Integer, Integer> d(@Nullable InputStream inputStream) {
        if (inputStream != null) {
            d dVar = f16069a;
            ByteBuffer k10 = dVar.k();
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            try {
                options.inTempStorage = k10.array();
                Pair<Integer, Integer> pair = null;
                dVar.f(inputStream, null, options);
                if (options.outWidth != -1 && options.outHeight != -1) {
                    pair = new Pair<>(Integer.valueOf(options.outWidth), Integer.valueOf(options.outHeight));
                }
                dVar.l(k10);
                return pair;
            } catch (Throwable th2) {
                f16069a.l(k10);
                throw th2;
            }
        }
        throw new IllegalStateException("Required value was null.");
    }

    @NotNull
    public static final f e(@Nullable InputStream inputStream) {
        if (inputStream != null) {
            d dVar = f16069a;
            ByteBuffer k10 = dVar.k();
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            try {
                options.inTempStorage = k10.array();
                ColorSpace colorSpace = null;
                dVar.f(inputStream, null, options);
                if (Build.VERSION.SDK_INT >= 26) {
                    colorSpace = options.outColorSpace;
                }
                f fVar = new f(options.outWidth, options.outHeight, colorSpace);
                dVar.l(k10);
                return fVar;
            } catch (Throwable th2) {
                f16069a.l(k10);
                throw th2;
            }
        }
        throw new IllegalStateException("Required value was null.");
    }

    private final Pools.SynchronizedPool<ByteBuffer> g() {
        return (Pools.SynchronizedPool) f16070b.getValue();
    }

    @SuppressLint({"NewApi"})
    public static final int h(@Nullable Bitmap.Config config) {
        int i10;
        if (config == null) {
            i10 = -1;
        } else {
            i10 = a.$EnumSwitchMapping$0[config.ordinal()];
        }
        switch (i10) {
            case 1:
            case 6:
            case 7:
                return 4;
            case 2:
                return 1;
            case 3:
            case 4:
                return 2;
            case 5:
                return 8;
            default:
                throw new UnsupportedOperationException("The provided Bitmap.Config is not supported");
        }
    }

    public static final int i(int i10, int i11, @Nullable Bitmap.Config config) {
        if (i10 > 0) {
            if (i11 > 0) {
                int h10 = h(config);
                int i12 = i10 * i11 * h10;
                if (i12 > 0) {
                    return i12;
                }
                throw new IllegalStateException(("size must be > 0: size: " + i12 + ", width: " + i10 + ", height: " + i11 + ", pixelSize: " + h10).toString());
            }
            throw new IllegalArgumentException(("height must be > 0, height is: " + i11).toString());
        }
        throw new IllegalArgumentException(("width must be > 0, width is: " + i10).toString());
    }

    @SuppressLint({"NewApi"})
    public static final int j(@Nullable Bitmap bitmap) {
        if (bitmap == null) {
            return 0;
        }
        try {
            return bitmap.getAllocationByteCount();
        } catch (NullPointerException unused) {
            return bitmap.getByteCount();
        }
    }

    private final ByteBuffer k() {
        ByteBuffer c10 = c();
        if (c10 == null) {
            ByteBuffer allocate = ByteBuffer.allocate(DecodeBufferHelper.c());
            Intrinsics.checkNotNullExpressionValue(allocate, "allocate(...)");
            return allocate;
        }
        return c10;
    }

    private final void l(ByteBuffer byteBuffer) {
        if (!f16071c) {
            g().release(byteBuffer);
        }
    }

    @Nullable
    public final Bitmap f(@Nullable InputStream inputStream, @Nullable Rect rect, @Nullable BitmapFactory.Options options) {
        if (f16072d) {
            try {
                return BitmapFactory.decodeStream(inputStream, rect, options);
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }
        return BitmapFactory.decodeStream(inputStream, rect, options);
    }
}
