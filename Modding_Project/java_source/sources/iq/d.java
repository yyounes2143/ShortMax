package iq;

import android.graphics.Bitmap;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rq.k;
@Metadata
/* loaded from: classes8.dex */
public final class d extends a {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(@NotNull k algorithmParams) {
        super(algorithmParams);
        Intrinsics.checkNotNullParameter(algorithmParams, "algorithmParams");
    }

    private final float h(Bitmap bitmap, float f10) {
        int i10;
        int i11;
        int i12 = 0;
        IntRange v10 = kotlin.ranges.e.v(0, bitmap.getWidth());
        IntRange v11 = kotlin.ranges.e.v(0, bitmap.getHeight());
        int h02 = CollectionsKt.h0(v10) * CollectionsKt.h0(v11);
        int[] iArr = new int[bitmap.getWidth()];
        int c10 = v11.c();
        int d10 = v11.d();
        if (c10 <= d10) {
            int i13 = 0;
            int i14 = 0;
            int i15 = c10;
            while (true) {
                bitmap.getPixels(iArr, 0, bitmap.getWidth(), 0, i15, bitmap.getWidth(), 1);
                int c11 = v10.c();
                int d11 = v10.d();
                if (c11 <= d11) {
                    int i16 = i14;
                    while (true) {
                        int i17 = iArr[c11];
                        if (i13 == 0) {
                            i16 = i17;
                            i13 = 1;
                        } else if (i17 == i16) {
                            i13++;
                        } else {
                            i13--;
                        }
                        if (c11 == d11) {
                            break;
                        }
                        c11++;
                    }
                    i14 = i16;
                }
                if (i15 == d10) {
                    break;
                }
                i15++;
            }
            i10 = i13;
            i11 = i14;
        } else {
            i10 = 0;
            i11 = 0;
        }
        float f11 = h02;
        if (i10 < ((2 * f10) - 1) * f11) {
            return 0.0f;
        }
        int c12 = v11.c();
        int d12 = v11.d();
        if (c12 <= d12) {
            int i18 = c12;
            while (true) {
                bitmap.getPixels(iArr, 0, bitmap.getWidth(), 0, i18, bitmap.getWidth(), 1);
                int c13 = v10.c();
                int d13 = v10.d();
                if (c13 <= d13) {
                    while (true) {
                        if (iArr[c13] == i11) {
                            i12++;
                        }
                        if (c13 == d13) {
                            break;
                        }
                        c13++;
                    }
                }
                if (i18 == d12) {
                    break;
                }
                i18++;
            }
        }
        return i12 / f11;
    }

    private final float i(Bitmap bitmap) {
        int i10;
        int i11 = 0;
        IntRange v10 = kotlin.ranges.e.v(0, bitmap.getWidth());
        IntRange v11 = kotlin.ranges.e.v(0, bitmap.getHeight());
        int h02 = CollectionsKt.h0(v10) * CollectionsKt.h0(v11);
        int[] iArr = new int[bitmap.getWidth()];
        HashMap hashMap = new HashMap();
        int c10 = v11.c();
        int d10 = v11.d();
        if (c10 <= d10) {
            int i12 = c10;
            while (true) {
                bitmap.getPixels(iArr, 0, bitmap.getWidth(), 0, i12, bitmap.getWidth(), 1);
                int c11 = v10.c();
                int d11 = v10.d();
                if (c11 <= d11) {
                    while (true) {
                        int i13 = iArr[c11];
                        Integer valueOf = Integer.valueOf(i13);
                        Integer num = (Integer) hashMap.get(Integer.valueOf(i13));
                        if (num != null) {
                            i10 = num.intValue();
                        } else {
                            i10 = 0;
                        }
                        hashMap.put(valueOf, Integer.valueOf(i10 + 1));
                        if (c11 == d11) {
                            break;
                        }
                        c11++;
                    }
                }
                if (i12 == d10) {
                    break;
                }
                i12++;
            }
        }
        Integer num2 = (Integer) CollectionsKt.E0(hashMap.values());
        if (num2 != null) {
            i11 = num2.intValue();
        }
        return i11 / h02;
    }

    @Override // iq.a
    @Nullable
    public Boolean c(@NotNull Bitmap image) {
        float i10;
        boolean z10;
        Intrinsics.checkNotNullParameter(image, "image");
        float a10 = d().a();
        if (a10 > 0.5f) {
            i10 = h(image, a10);
        } else {
            i10 = i(image);
        }
        if (i10 >= a10) {
            z10 = true;
        } else {
            z10 = false;
        }
        e(Float.valueOf(i10), Boolean.valueOf(z10));
        return Boolean.valueOf(z10);
    }
}
