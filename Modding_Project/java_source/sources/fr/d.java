package fr;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.bidmachine.iab.CacheControl;
import io.bidmachine.iab.utils.IabElementStyle;
import io.bidmachine.protobuf.AdExtension;
import io.bidmachine.protobuf.CreativeLoadingMethod;
/* compiled from: IabUtils.java */
/* loaded from: classes8.dex */
public class d {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private static final CacheControl f51932a = CacheControl.FullLoad;

    /* compiled from: IabUtils.java */
    /* loaded from: classes8.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f51933a;

        static {
            int[] iArr = new int[CreativeLoadingMethod.values().length];
            f51933a = iArr;
            try {
                iArr[CreativeLoadingMethod.Stream.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f51933a[CreativeLoadingMethod.PartialLoad.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    @NonNull
    public static fr.a a(@NonNull qm.a aVar) {
        fr.a aVar2;
        int c10 = aVar.c();
        if (c10 != 1) {
            if (c10 != 3) {
                if (c10 != 5) {
                    if (c10 != 6) {
                        if (c10 != 7) {
                            aVar2 = fr.a.f51922r;
                        }
                    } else {
                        aVar2 = fr.a.f51918n;
                    }
                } else {
                    aVar2 = fr.a.f51920p;
                }
            }
            aVar2 = fr.a.f51921q;
        } else {
            aVar2 = fr.a.f51909e;
        }
        return new fr.a(aVar2, c10, aVar.d());
    }

    @NonNull
    public static CacheControl b(@Nullable Object obj) {
        CreativeLoadingMethod valueOf;
        if (obj == null) {
            return f51932a;
        }
        if (obj instanceof CacheControl) {
            return (CacheControl) obj;
        }
        if (obj instanceof CreativeLoadingMethod) {
            valueOf = (CreativeLoadingMethod) obj;
        } else {
            if (obj instanceof String) {
                try {
                    valueOf = CreativeLoadingMethod.valueOf((String) obj);
                } catch (IllegalArgumentException unused) {
                }
            }
            valueOf = null;
        }
        if (valueOf != null) {
            int i10 = a.f51933a[valueOf.ordinal()];
            if (i10 != 1) {
                if (i10 != 2) {
                    return f51932a;
                }
                return CacheControl.PartialLoad;
            }
            return CacheControl.Stream;
        }
        return f51932a;
    }

    @Nullable
    public static IabElementStyle c(@Nullable AdExtension.ControlAsset controlAsset) {
        if (controlAsset == null) {
            return null;
        }
        try {
            IabElementStyle iabElementStyle = new IabElementStyle();
            iabElementStyle.Y(controlAsset.getMargin());
            iabElementStyle.l0(controlAsset.getPadding());
            iabElementStyle.O(controlAsset.getContent());
            iabElementStyle.P(io.bidmachine.core.g.m0(controlAsset.getFill()));
            iabElementStyle.S(Integer.valueOf(controlAsset.getFontStyle()));
            iabElementStyle.u0(Integer.valueOf(controlAsset.getWidth()));
            iabElementStyle.U(Integer.valueOf(controlAsset.getHeight()));
            iabElementStyle.V(Float.valueOf(controlAsset.getHideafter()));
            iabElementStyle.W(io.bidmachine.core.g.e0(controlAsset.getX()));
            iabElementStyle.r0(io.bidmachine.core.g.h0(controlAsset.getY()));
            iabElementStyle.Z(Float.valueOf(controlAsset.getOpacity()));
            iabElementStyle.a0(Boolean.valueOf(controlAsset.getOutlined()));
            iabElementStyle.o0(io.bidmachine.core.g.m0(controlAsset.getStroke()));
            iabElementStyle.p0(Float.valueOf(controlAsset.getStrokeWidth()));
            iabElementStyle.q0(controlAsset.getStyle());
            iabElementStyle.s0(Boolean.valueOf(controlAsset.getVisible()));
            return iabElementStyle;
        } catch (Exception unused) {
            return null;
        }
    }
}
