package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.theme;

import androidx.compose.material.Typography;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.font.SystemFontFamily;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextDirection;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.unit.TextUnitKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes6.dex */
public final class e {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final Typography f34976a;

    static {
        SystemFontFamily systemFontFamily = FontFamily.Companion.getDefault();
        f34976a = new Typography(null, null, null, null, null, null, null, null, null, new TextStyle(0L, TextUnitKt.getSp(16), FontWeight.Companion.getNormal(), (FontStyle) null, (FontSynthesis) null, systemFontFamily, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (TextAlign) null, (TextDirection) null, 0L, (TextIndent) null, 262105, (DefaultConstructorMarker) null), null, null, null, null, 15871, null);
    }

    @NotNull
    public static final Typography a() {
        return f34976a;
    }
}
