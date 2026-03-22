package androidx.compose.foundation.text;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.Placeholder;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import at.n;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CoreText.kt */
@Metadata
/* loaded from: classes.dex */
public final class CoreTextKt {
    @NotNull
    private static final Pair<List<AnnotatedString.Range<Placeholder>>, List<AnnotatedString.Range<n<String, Composer, Integer, Unit>>>> EmptyInlineContent = new Pair<>(CollectionsKt.n(), CollectionsKt.n());

    @Composable
    @ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable]]")
    public static final void InlineChildren(@NotNull final AnnotatedString text, @NotNull final List<AnnotatedString.Range<n<String, Composer, Integer, Unit>>> inlineContents, @Nullable Composer composer, final int i10) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(inlineContents, "inlineContents");
        Composer startRestartGroup = composer.startRestartGroup(-110905764);
        int i11 = 0;
        for (int size = inlineContents.size(); i11 < size; size = size) {
            AnnotatedString.Range<n<String, Composer, Integer, Unit>> range = inlineContents.get(i11);
            n<String, Composer, Integer, Unit> component1 = range.component1();
            int component2 = range.component2();
            int component3 = range.component3();
            CoreTextKt$InlineChildren$1$2 coreTextKt$InlineChildren$1$2 = new MeasurePolicy() { // from class: androidx.compose.foundation.text.CoreTextKt$InlineChildren$1$2
                @Override // androidx.compose.ui.layout.MeasurePolicy
                @NotNull
                /* renamed from: measure-3p2s80s */
                public final MeasureResult mo42measure3p2s80s(@NotNull MeasureScope Layout, @NotNull List<? extends Measurable> children, long j10) {
                    Intrinsics.checkNotNullParameter(Layout, "$this$Layout");
                    Intrinsics.checkNotNullParameter(children, "children");
                    final ArrayList arrayList = new ArrayList(children.size());
                    int size2 = children.size();
                    for (int i12 = 0; i12 < size2; i12++) {
                        arrayList.add(children.get(i12).mo3335measureBRTryo0(j10));
                    }
                    return MeasureScope.layout$default(Layout, Constraints.m4005getMaxWidthimpl(j10), Constraints.m4004getMaxHeightimpl(j10), null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.foundation.text.CoreTextKt$InlineChildren$1$2$measure$1
                        /* JADX INFO: Access modifiers changed from: package-private */
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        /* JADX WARN: Multi-variable type inference failed */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Unit invoke(Placeable.PlacementScope placementScope) {
                            invoke2(placementScope);
                            return Unit.f60915a;
                        }

                        /* renamed from: invoke  reason: avoid collision after fix types in other method */
                        public final void invoke2(@NotNull Placeable.PlacementScope layout) {
                            Intrinsics.checkNotNullParameter(layout, "$this$layout");
                            List<Placeable> list = arrayList;
                            int size3 = list.size();
                            for (int i13 = 0; i13 < size3; i13++) {
                                Placeable.PlacementScope.placeRelative$default(layout, list.get(i13), 0, 0, 0.0f, 4, null);
                            }
                        }
                    }, 4, null);
                }
            };
            startRestartGroup.startReplaceableGroup(-1323940314);
            Modifier.Companion companion = Modifier.Companion;
            Density density = (Density) startRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
            LayoutDirection layoutDirection = (LayoutDirection) startRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
            ViewConfiguration viewConfiguration = (ViewConfiguration) startRestartGroup.consume(CompositionLocalsKt.getLocalViewConfiguration());
            ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
            Function0<ComposeUiNode> constructor = companion2.getConstructor();
            n<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf = LayoutKt.materializerOf(companion);
            if (startRestartGroup.getApplier() == null) {
                ComposablesKt.invalidApplier();
            }
            startRestartGroup.startReusableNode();
            if (startRestartGroup.getInserting()) {
                startRestartGroup.createNode(constructor);
            } else {
                startRestartGroup.useNode();
            }
            startRestartGroup.disableReusing();
            Composer m1376constructorimpl = Updater.m1376constructorimpl(startRestartGroup);
            Updater.m1383setimpl(m1376constructorimpl, coreTextKt$InlineChildren$1$2, companion2.getSetMeasurePolicy());
            Updater.m1383setimpl(m1376constructorimpl, density, companion2.getSetDensity());
            Updater.m1383setimpl(m1376constructorimpl, layoutDirection, companion2.getSetLayoutDirection());
            Updater.m1383setimpl(m1376constructorimpl, viewConfiguration, companion2.getSetViewConfiguration());
            startRestartGroup.enableReusing();
            materializerOf.invoke(SkippableUpdater.m1349boximpl(SkippableUpdater.m1350constructorimpl(startRestartGroup)), startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(2058660585);
            startRestartGroup.startReplaceableGroup(-72427749);
            component1.invoke(text.subSequence(component2, component3).getText(), startRestartGroup, 0);
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endNode();
            startRestartGroup.endReplaceableGroup();
            i11++;
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.foundation.text.CoreTextKt$InlineChildren$2
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return Unit.f60915a;
                }

                public final void invoke(@Nullable Composer composer2, int i12) {
                    CoreTextKt.InlineChildren(AnnotatedString.this, inlineContents, composer2, i10 | 1);
                }
            });
        }
    }

    @NotNull
    public static final Pair<List<AnnotatedString.Range<Placeholder>>, List<AnnotatedString.Range<n<String, Composer, Integer, Unit>>>> resolveInlineContent(@NotNull AnnotatedString text, @NotNull Map<String, InlineTextContent> inlineContent) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(inlineContent, "inlineContent");
        if (inlineContent.isEmpty()) {
            return EmptyInlineContent;
        }
        List<AnnotatedString.Range<String>> stringAnnotations = text.getStringAnnotations(InlineTextContentKt.INLINE_CONTENT_TAG, 0, text.length());
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int size = stringAnnotations.size();
        for (int i10 = 0; i10 < size; i10++) {
            AnnotatedString.Range<String> range = stringAnnotations.get(i10);
            InlineTextContent inlineTextContent = inlineContent.get(range.getItem());
            if (inlineTextContent != null) {
                arrayList.add(new AnnotatedString.Range(inlineTextContent.getPlaceholder(), range.getStart(), range.getEnd()));
                arrayList2.add(new AnnotatedString.Range(inlineTextContent.getChildren(), range.getStart(), range.getEnd()));
            }
        }
        return new Pair<>(arrayList, arrayList2);
    }

    @NotNull
    /* renamed from: updateTextDelegate-x_uQXYA */
    public static final TextDelegate m718updateTextDelegatex_uQXYA(@NotNull TextDelegate current, @NotNull AnnotatedString text, @NotNull TextStyle style, @NotNull Density density, @NotNull FontFamily.Resolver fontFamilyResolver, boolean z10, int i10, int i11, @NotNull List<AnnotatedString.Range<Placeholder>> placeholders) {
        Intrinsics.checkNotNullParameter(current, "current");
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(style, "style");
        Intrinsics.checkNotNullParameter(density, "density");
        Intrinsics.checkNotNullParameter(fontFamilyResolver, "fontFamilyResolver");
        Intrinsics.checkNotNullParameter(placeholders, "placeholders");
        if (Intrinsics.areEqual(current.getText(), text) && Intrinsics.areEqual(current.getStyle(), style)) {
            if (current.getSoftWrap() == z10) {
                if (TextOverflow.m3983equalsimpl0(current.m769getOverflowgIe3tQ8(), i10)) {
                    if (current.getMaxLines() == i11 && Intrinsics.areEqual(current.getDensity(), density) && Intrinsics.areEqual(current.getPlaceholders(), placeholders) && current.getFontFamilyResolver() == fontFamilyResolver) {
                        return current;
                    }
                    return new TextDelegate(text, style, i11, z10, i10, density, fontFamilyResolver, placeholders, null);
                }
                return new TextDelegate(text, style, i11, z10, i10, density, fontFamilyResolver, placeholders, null);
            }
        }
        return new TextDelegate(text, style, i11, z10, i10, density, fontFamilyResolver, placeholders, null);
    }

    /* renamed from: updateTextDelegate-x_uQXYA$default */
    public static /* synthetic */ TextDelegate m719updateTextDelegatex_uQXYA$default(TextDelegate textDelegate, AnnotatedString annotatedString, TextStyle textStyle, Density density, FontFamily.Resolver resolver, boolean z10, int i10, int i11, List list, int i12, Object obj) {
        boolean z11;
        int i13;
        int i14;
        if ((i12 & 32) != 0) {
            z11 = true;
        } else {
            z11 = z10;
        }
        if ((i12 & 64) != 0) {
            i13 = TextOverflow.Companion.m3990getClipgIe3tQ8();
        } else {
            i13 = i10;
        }
        if ((i12 & 128) != 0) {
            i14 = Integer.MAX_VALUE;
        } else {
            i14 = i11;
        }
        return m718updateTextDelegatex_uQXYA(textDelegate, annotatedString, textStyle, density, resolver, z11, i13, i14, list);
    }

    @NotNull
    /* renamed from: updateTextDelegate-y0k-MQk */
    public static final TextDelegate m720updateTextDelegatey0kMQk(@NotNull TextDelegate current, @NotNull String text, @NotNull TextStyle style, @NotNull Density density, @NotNull FontFamily.Resolver fontFamilyResolver, boolean z10, int i10, int i11) {
        Intrinsics.checkNotNullParameter(current, "current");
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(style, "style");
        Intrinsics.checkNotNullParameter(density, "density");
        Intrinsics.checkNotNullParameter(fontFamilyResolver, "fontFamilyResolver");
        if (Intrinsics.areEqual(current.getText().getText(), text) && Intrinsics.areEqual(current.getStyle(), style)) {
            if (current.getSoftWrap() == z10) {
                if (TextOverflow.m3983equalsimpl0(current.m769getOverflowgIe3tQ8(), i10)) {
                    if (current.getMaxLines() == i11 && Intrinsics.areEqual(current.getDensity(), density) && current.getFontFamilyResolver() == fontFamilyResolver) {
                        return current;
                    }
                    return new TextDelegate(new AnnotatedString(text, null, null, 6, null), style, i11, z10, i10, density, fontFamilyResolver, null, 128, null);
                }
                return new TextDelegate(new AnnotatedString(text, null, null, 6, null), style, i11, z10, i10, density, fontFamilyResolver, null, 128, null);
            }
        }
        return new TextDelegate(new AnnotatedString(text, null, null, 6, null), style, i11, z10, i10, density, fontFamilyResolver, null, 128, null);
    }

    /* renamed from: updateTextDelegate-y0k-MQk$default */
    public static /* synthetic */ TextDelegate m721updateTextDelegatey0kMQk$default(TextDelegate textDelegate, String str, TextStyle textStyle, Density density, FontFamily.Resolver resolver, boolean z10, int i10, int i11, int i12, Object obj) {
        boolean z11;
        int i13;
        int i14;
        if ((i12 & 32) != 0) {
            z11 = true;
        } else {
            z11 = z10;
        }
        if ((i12 & 64) != 0) {
            i13 = TextOverflow.Companion.m3990getClipgIe3tQ8();
        } else {
            i13 = i10;
        }
        if ((i12 & 128) != 0) {
            i14 = Integer.MAX_VALUE;
        } else {
            i14 = i11;
        }
        return m720updateTextDelegatey0kMQk(textDelegate, str, textStyle, density, resolver, z11, i13, i14);
    }
}
