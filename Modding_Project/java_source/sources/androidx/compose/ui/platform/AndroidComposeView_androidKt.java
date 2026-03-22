package androidx.compose.ui.platform;

import android.content.res.Configuration;
import androidx.annotation.RestrictTo;
import androidx.compose.ui.InternalComposeUiApi;
import androidx.compose.ui.text.input.PlatformTextInputService;
import androidx.compose.ui.text.input.TextInputService;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidComposeView.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class AndroidComposeView_androidKt {
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @NotNull
    private static Function1<? super PlatformTextInputService, ? extends TextInputService> textInputServiceFactory = new Function1<PlatformTextInputService, TextInputService>() { // from class: androidx.compose.ui.platform.AndroidComposeView_androidKt$textInputServiceFactory$1
        @Override // kotlin.jvm.functions.Function1
        @NotNull
        public final TextInputService invoke(@NotNull PlatformTextInputService it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return new TextInputService(it);
        }
    };

    /* renamed from: dot-p89u6pk  reason: not valid java name */
    private static final float m3525dotp89u6pk(float[] fArr, int i10, float[] fArr2, int i11) {
        int i12 = i10 * 4;
        return (fArr[i12] * fArr2[i11]) + (fArr[i12 + 1] * fArr2[4 + i11]) + (fArr[i12 + 2] * fArr2[8 + i11]) + (fArr[i12 + 3] * fArr2[12 + i11]);
    }

    @NotNull
    public static final LayoutDirection getLocaleLayoutDirection(@NotNull Configuration configuration) {
        Intrinsics.checkNotNullParameter(configuration, "<this>");
        return layoutDirectionFromInt(configuration.getLayoutDirection());
    }

    @NotNull
    public static final Function1<PlatformTextInputService, TextInputService> getTextInputServiceFactory() {
        return textInputServiceFactory;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final LayoutDirection layoutDirectionFromInt(int i10) {
        if (i10 != 0) {
            if (i10 != 1) {
                return LayoutDirection.Ltr;
            }
            return LayoutDirection.Rtl;
        }
        return LayoutDirection.Ltr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: preTransform-JiSxe2E  reason: not valid java name */
    public static final void m3526preTransformJiSxe2E(float[] fArr, float[] fArr2) {
        float m3525dotp89u6pk = m3525dotp89u6pk(fArr2, 0, fArr, 0);
        float m3525dotp89u6pk2 = m3525dotp89u6pk(fArr2, 0, fArr, 1);
        float m3525dotp89u6pk3 = m3525dotp89u6pk(fArr2, 0, fArr, 2);
        float m3525dotp89u6pk4 = m3525dotp89u6pk(fArr2, 0, fArr, 3);
        float m3525dotp89u6pk5 = m3525dotp89u6pk(fArr2, 1, fArr, 0);
        float m3525dotp89u6pk6 = m3525dotp89u6pk(fArr2, 1, fArr, 1);
        float m3525dotp89u6pk7 = m3525dotp89u6pk(fArr2, 1, fArr, 2);
        float m3525dotp89u6pk8 = m3525dotp89u6pk(fArr2, 1, fArr, 3);
        float m3525dotp89u6pk9 = m3525dotp89u6pk(fArr2, 2, fArr, 0);
        float m3525dotp89u6pk10 = m3525dotp89u6pk(fArr2, 2, fArr, 1);
        float m3525dotp89u6pk11 = m3525dotp89u6pk(fArr2, 2, fArr, 2);
        float m3525dotp89u6pk12 = m3525dotp89u6pk(fArr2, 2, fArr, 3);
        float m3525dotp89u6pk13 = m3525dotp89u6pk(fArr2, 3, fArr, 0);
        float m3525dotp89u6pk14 = m3525dotp89u6pk(fArr2, 3, fArr, 1);
        float m3525dotp89u6pk15 = m3525dotp89u6pk(fArr2, 3, fArr, 2);
        float m3525dotp89u6pk16 = m3525dotp89u6pk(fArr2, 3, fArr, 3);
        fArr[0] = m3525dotp89u6pk;
        fArr[1] = m3525dotp89u6pk2;
        fArr[2] = m3525dotp89u6pk3;
        fArr[3] = m3525dotp89u6pk4;
        fArr[4] = m3525dotp89u6pk5;
        fArr[5] = m3525dotp89u6pk6;
        fArr[6] = m3525dotp89u6pk7;
        fArr[7] = m3525dotp89u6pk8;
        fArr[8] = m3525dotp89u6pk9;
        fArr[9] = m3525dotp89u6pk10;
        fArr[10] = m3525dotp89u6pk11;
        fArr[11] = m3525dotp89u6pk12;
        fArr[12] = m3525dotp89u6pk13;
        fArr[13] = m3525dotp89u6pk14;
        fArr[14] = m3525dotp89u6pk15;
        fArr[15] = m3525dotp89u6pk16;
    }

    public static final void setTextInputServiceFactory(@NotNull Function1<? super PlatformTextInputService, ? extends TextInputService> function1) {
        Intrinsics.checkNotNullParameter(function1, "<set-?>");
        textInputServiceFactory = function1;
    }

    @InternalComposeUiApi
    public static /* synthetic */ void getTextInputServiceFactory$annotations() {
    }
}
