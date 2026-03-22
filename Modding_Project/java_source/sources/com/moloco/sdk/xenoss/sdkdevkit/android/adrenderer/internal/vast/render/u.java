package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render;

import com.moloco.sdk.internal.MolocoLogger;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.C3281d;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.g0;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.a0;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes6.dex */
public final class u {

    /* loaded from: classes6.dex */
    public /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f36358a;

        static {
            int[] iArr = new int[com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.i.values().length];
            try {
                iArr[com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.i.f35581a.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.i.f35582b.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f36358a = iArr;
        }
    }

    public static final void a(@NotNull C3281d c3281d, @NotNull a0 vastResource) {
        String str;
        a0.c cVar;
        Intrinsics.checkNotNullParameter(c3281d, "<this>");
        Intrinsics.checkNotNullParameter(vastResource, "vastResource");
        if (vastResource instanceof a0.c) {
            int i10 = a.f36358a[((a0.c) vastResource).a().a().ordinal()];
            if (i10 != 1) {
                if (i10 == 2) {
                    str = "<script src=\"" + cVar.a().b() + "\"></script>";
                } else {
                    throw new NoWhenBranchMatchedException();
                }
            } else {
                str = "<html><head></head><body style=\"margin:0;padding:0\"><img src=\"" + cVar.a().b() + "\" width=\"100%\" style=\"max-width:100%;max-height:100%;\" /></body></html>";
            }
        } else if (vastResource instanceof a0.a) {
            str = ((a0.a) vastResource).a().a();
        } else if (vastResource instanceof a0.b) {
            str = "<iframe frameborder=\"0\" scrolling=\"no\" marginheight=\"0\" marginwidth=\"0\" style=\"border: 0px; margin: 0px;\" width=100% height=100% src=\"" + ((a0.b) vastResource).a().a() + "\"></iframe>";
        } else {
            throw new NoWhenBranchMatchedException();
        }
        try {
            g0.a(c3281d, c3281d.getHtmlCssFixer().a(str));
        } catch (Exception e10) {
            MolocoLogger.error$default(MolocoLogger.INSTANCE, "BaseWebView", e10.toString(), e10, false, 8, null);
        }
    }
}
