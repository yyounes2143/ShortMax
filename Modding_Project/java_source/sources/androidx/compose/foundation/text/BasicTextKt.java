package androidx.compose.foundation.text;

import androidx.compose.foundation.text.selection.SelectionRegistrar;
import androidx.compose.foundation.text.selection.SelectionRegistrarKt;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.runtime.saveable.SaverScope;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BasicText.kt */
@Metadata
/* loaded from: classes.dex */
public final class BasicTextKt {
    /* JADX WARN: Removed duplicated region for block: B:100:0x012e  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0132  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x013d  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0149  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0150  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0169  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x017a  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x035c  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x012b  */
    @androidx.compose.runtime.ComposableTarget(applier = "androidx.compose.ui.UiComposable")
    @androidx.compose.runtime.Composable
    /* renamed from: BasicText-4YKlhWE  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m708BasicText4YKlhWE(@org.jetbrains.annotations.NotNull final androidx.compose.ui.text.AnnotatedString r32, @org.jetbrains.annotations.Nullable androidx.compose.ui.Modifier r33, @org.jetbrains.annotations.Nullable androidx.compose.ui.text.TextStyle r34, @org.jetbrains.annotations.Nullable kotlin.jvm.functions.Function1<? super androidx.compose.ui.text.TextLayoutResult, kotlin.Unit> r35, int r36, boolean r37, int r38, @org.jetbrains.annotations.Nullable java.util.Map<java.lang.String, androidx.compose.foundation.text.InlineTextContent> r39, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r40, final int r41, final int r42) {
        /*
            Method dump skipped, instructions count: 868
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.BasicTextKt.m708BasicText4YKlhWE(androidx.compose.ui.text.AnnotatedString, androidx.compose.ui.Modifier, androidx.compose.ui.text.TextStyle, kotlin.jvm.functions.Function1, int, boolean, int, java.util.Map, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x02be  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x011d  */
    @androidx.compose.runtime.ComposableTarget(applier = "androidx.compose.ui.UiComposable")
    @androidx.compose.runtime.Composable
    /* renamed from: BasicText-BpD7jsM  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m709BasicTextBpD7jsM(@org.jetbrains.annotations.NotNull final java.lang.String r27, @org.jetbrains.annotations.Nullable androidx.compose.ui.Modifier r28, @org.jetbrains.annotations.Nullable androidx.compose.ui.text.TextStyle r29, @org.jetbrains.annotations.Nullable kotlin.jvm.functions.Function1<? super androidx.compose.ui.text.TextLayoutResult, kotlin.Unit> r30, int r31, boolean r32, int r33, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r34, final int r35, final int r36) {
        /*
            Method dump skipped, instructions count: 710
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.BasicTextKt.m709BasicTextBpD7jsM(java.lang.String, androidx.compose.ui.Modifier, androidx.compose.ui.text.TextStyle, kotlin.jvm.functions.Function1, int, boolean, int, androidx.compose.runtime.Composer, int, int):void");
    }

    private static final Saver<Long, Long> selectionIdSaver(final SelectionRegistrar selectionRegistrar) {
        return SaverKt.Saver(new Function2<SaverScope, Long, Long>() { // from class: androidx.compose.foundation.text.BasicTextKt$selectionIdSaver$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Long invoke(SaverScope saverScope, Long l10) {
                return invoke(saverScope, l10.longValue());
            }

            @Nullable
            public final Long invoke(@NotNull SaverScope Saver, long j10) {
                Intrinsics.checkNotNullParameter(Saver, "$this$Saver");
                if (SelectionRegistrarKt.hasSelection(SelectionRegistrar.this, j10)) {
                    return Long.valueOf(j10);
                }
                return null;
            }
        }, new Function1<Long, Long>() { // from class: androidx.compose.foundation.text.BasicTextKt$selectionIdSaver$2
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Long invoke(Long l10) {
                return invoke(l10.longValue());
            }

            @Nullable
            public final Long invoke(long j10) {
                return Long.valueOf(j10);
            }
        });
    }
}
