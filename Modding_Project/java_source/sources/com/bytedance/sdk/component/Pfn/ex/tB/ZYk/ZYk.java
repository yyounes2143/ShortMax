package com.bytedance.sdk.component.Pfn.ex.tB.ZYk;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.widget.ImageView;
import com.ss.ttm.utils.AVLogger;
import com.ss.ttvideoengine.TTVideoEngineInterface;
/* loaded from: classes3.dex */
public class ZYk {
    private int Pfn;

    /* renamed from: ba  reason: collision with root package name */
    private final int f12558ba;
    private final int cFZ;
    private int ex;
    private final int jFA = TTVideoEngineInterface.PLAYER_OPTION_ENABLE_BOX_DEMUXER;
    private final int kkU = AVLogger.LEVEL_LOG_FATAL;

    /* renamed from: so  reason: collision with root package name */
    private final ImageView.ScaleType f12559so;
    private final Bitmap.Config tB;
    public static final ImageView.ScaleType oJ = ImageView.ScaleType.CENTER_INSIDE;
    public static final Bitmap.Config ZYk = Bitmap.Config.ARGB_4444;

    public ZYk(int i10, int i11, ImageView.ScaleType scaleType, Bitmap.Config config, int i12, int i13) {
        this.tB = config;
        this.ex = i10;
        this.Pfn = i11;
        this.f12559so = scaleType;
        this.f12558ba = i12;
        this.cFZ = i13;
        oJ(i10, i11);
    }

    private static int oJ(int i10, int i11, int i12, int i13) {
        if (i10 == 0 && i11 == 0) {
            return i12;
        }
        if (i10 == 0) {
            return (int) (i12 * (i11 / i13));
        } else if (i11 == 0) {
            return i10;
        } else {
            double d10 = i13 / i12;
            double d11 = i11;
            return ((double) i10) * d10 > d11 ? (int) (d11 / d10) : i10;
        }
    }

    static int oJ(int i10, int i11, int i12, int i13, int i14, int i15) {
        double min = Math.min(i10 / i12, i11 / i13);
        if (i14 > 0 && i15 > 0) {
            min = Math.max(min, Math.min(Math.max(i10, i11) / Math.max(i14, i15), Math.min(i10, i11) / Math.min(i14, i15)));
        }
        return Integer.highestOneBit((int) min);
    }

    public Bitmap oJ(byte[] bArr) {
        Bitmap decodeByteArray;
        BitmapFactory.Options options = new BitmapFactory.Options();
        if (this.ex == 0 && this.Pfn == 0) {
            options.inPreferredConfig = this.tB;
            decodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        } else {
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
            int i10 = options.outWidth;
            int i11 = options.outHeight;
            int oJ2 = oJ(this.ex, this.Pfn, i10, i11);
            int oJ3 = oJ(this.Pfn, this.ex, i11, i10);
            options.inJustDecodeBounds = false;
            options.inSampleSize = oJ(i10, i11, oJ2, oJ3, this.f12558ba, this.cFZ);
            decodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
            if (decodeByteArray != null && (decodeByteArray.getWidth() > oJ2 || decodeByteArray.getHeight() > oJ3)) {
                Bitmap createScaledBitmap = Bitmap.createScaledBitmap(decodeByteArray, oJ2, oJ3, true);
                if (createScaledBitmap != decodeByteArray) {
                    decodeByteArray.recycle();
                }
                decodeByteArray = createScaledBitmap;
            }
        }
        if (decodeByteArray != null && decodeByteArray.getByteCount() > 83886080) {
            int width = decodeByteArray.getWidth() / 2;
            int height = decodeByteArray.getHeight() / 2;
            if (width > 0 && height > 0) {
                Bitmap createScaledBitmap2 = Bitmap.createScaledBitmap(decodeByteArray, width, height, true);
                if (createScaledBitmap2 != decodeByteArray) {
                    decodeByteArray.recycle();
                }
                return createScaledBitmap2;
            }
        }
        return decodeByteArray;
    }

    private void oJ(int i10, int i11) {
        if (i10 > 1280 && i11 > 1280) {
            if (i10 > i11) {
                this.ex = TTVideoEngineInterface.PLAYER_OPTION_ENABLE_BOX_DEMUXER;
                this.Pfn = (i11 * TTVideoEngineInterface.PLAYER_OPTION_ENABLE_BOX_DEMUXER) / i10;
                return;
            }
            this.ex = (i10 * TTVideoEngineInterface.PLAYER_OPTION_ENABLE_BOX_DEMUXER) / i11;
            this.Pfn = TTVideoEngineInterface.PLAYER_OPTION_ENABLE_BOX_DEMUXER;
        } else if (i10 > 1280) {
            this.ex = TTVideoEngineInterface.PLAYER_OPTION_ENABLE_BOX_DEMUXER;
            this.Pfn = (i11 * TTVideoEngineInterface.PLAYER_OPTION_ENABLE_BOX_DEMUXER) / i10;
        } else if (i11 > 1280) {
            this.ex = (i10 * TTVideoEngineInterface.PLAYER_OPTION_ENABLE_BOX_DEMUXER) / i11;
            this.Pfn = TTVideoEngineInterface.PLAYER_OPTION_ENABLE_BOX_DEMUXER;
        }
    }
}
