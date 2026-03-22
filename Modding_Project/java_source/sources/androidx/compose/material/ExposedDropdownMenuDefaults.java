package androidx.compose.material;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.graphics.Color;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ExposedDropdownMenu.kt */
@StabilityInferred(parameters = 0)
@Metadata
@ExperimentalMaterialApi
/* loaded from: classes.dex */
public final class ExposedDropdownMenuDefaults {
    public static final int $stable = 0;
    @NotNull
    public static final ExposedDropdownMenuDefaults INSTANCE = new ExposedDropdownMenuDefaults();

    private ExposedDropdownMenuDefaults() {
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:39:? A[RETURN, SYNTHETIC] */
    @androidx.compose.runtime.ComposableTarget(applier = "androidx.compose.ui.UiComposable")
    @androidx.compose.runtime.Composable
    @androidx.compose.material.ExperimentalMaterialApi
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void TrailingIcon(final boolean r13, @org.jetbrains.annotations.Nullable kotlin.jvm.functions.Function0<kotlin.Unit> r14, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r15, final int r16, final int r17) {
        /*
            r12 = this;
            r2 = r13
            r0 = 876077373(0x3437e13d, float:1.7125144E-7)
            r1 = r15
            androidx.compose.runtime.Composer r0 = r15.startRestartGroup(r0)
            r1 = r17 & 1
            if (r1 == 0) goto L10
            r1 = r16 | 6
            goto L22
        L10:
            r1 = r16 & 14
            if (r1 != 0) goto L20
            boolean r1 = r0.changed(r13)
            if (r1 == 0) goto L1c
            r1 = 4
            goto L1d
        L1c:
            r1 = 2
        L1d:
            r1 = r16 | r1
            goto L22
        L20:
            r1 = r16
        L22:
            r3 = r17 & 2
            if (r3 == 0) goto L2a
            r1 = r1 | 48
        L28:
            r4 = r14
            goto L3b
        L2a:
            r4 = r16 & 112(0x70, float:1.57E-43)
            if (r4 != 0) goto L28
            r4 = r14
            boolean r5 = r0.changed(r14)
            if (r5 == 0) goto L38
            r5 = 32
            goto L3a
        L38:
            r5 = 16
        L3a:
            r1 = r1 | r5
        L3b:
            r5 = r1 & 91
            r6 = 18
            if (r5 != r6) goto L4d
            boolean r5 = r0.getSkipping()
            if (r5 != 0) goto L48
            goto L4d
        L48:
            r0.skipToGroupEnd()
            r3 = r4
            goto L78
        L4d:
            if (r3 == 0) goto L53
            androidx.compose.material.ExposedDropdownMenuDefaults$TrailingIcon$1 r3 = new kotlin.jvm.functions.Function0<kotlin.Unit>() { // from class: androidx.compose.material.ExposedDropdownMenuDefaults$TrailingIcon$1
                static {
                    /*
                        androidx.compose.material.ExposedDropdownMenuDefaults$TrailingIcon$1 r0 = new androidx.compose.material.ExposedDropdownMenuDefaults$TrailingIcon$1
                        r0.<init>()
                        
                        // error: 0x0005: SPUT  (r0 I:androidx.compose.material.ExposedDropdownMenuDefaults$TrailingIcon$1) androidx.compose.material.ExposedDropdownMenuDefaults$TrailingIcon$1.INSTANCE androidx.compose.material.ExposedDropdownMenuDefaults$TrailingIcon$1
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.ExposedDropdownMenuDefaults$TrailingIcon$1.<clinit>():void");
                }

                {
                    /*
                        r1 = this;
                        r0 = 0
                        r1.<init>(r0)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.ExposedDropdownMenuDefaults$TrailingIcon$1.<init>():void");
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    /*
                        r0 = this;
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.ExposedDropdownMenuDefaults$TrailingIcon$1.invoke2():void");
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ kotlin.Unit invoke() {
                    /*
                        r1 = this;
                        r1.invoke2()
                        kotlin.Unit r0 = kotlin.Unit.f60915a
                        return r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.ExposedDropdownMenuDefaults$TrailingIcon$1.invoke():java.lang.Object");
                }
            }
            r11 = r3
            goto L54
        L53:
            r11 = r4
        L54:
            androidx.compose.ui.Modifier$Companion r3 = androidx.compose.ui.Modifier.Companion
            androidx.compose.material.ExposedDropdownMenuDefaults$TrailingIcon$2 r4 = new kotlin.jvm.functions.Function1<androidx.compose.ui.semantics.SemanticsPropertyReceiver, kotlin.Unit>() { // from class: androidx.compose.material.ExposedDropdownMenuDefaults$TrailingIcon$2
                static {
                    /*
                        androidx.compose.material.ExposedDropdownMenuDefaults$TrailingIcon$2 r0 = new androidx.compose.material.ExposedDropdownMenuDefaults$TrailingIcon$2
                        r0.<init>()
                        
                        // error: 0x0005: SPUT  (r0 I:androidx.compose.material.ExposedDropdownMenuDefaults$TrailingIcon$2) androidx.compose.material.ExposedDropdownMenuDefaults$TrailingIcon$2.INSTANCE androidx.compose.material.ExposedDropdownMenuDefaults$TrailingIcon$2
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.ExposedDropdownMenuDefaults$TrailingIcon$2.<clinit>():void");
                }

                {
                    /*
                        r1 = this;
                        r0 = 1
                        r1.<init>(r0)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.ExposedDropdownMenuDefaults$TrailingIcon$2.<init>():void");
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@org.jetbrains.annotations.NotNull androidx.compose.ui.semantics.SemanticsPropertyReceiver r2) {
                    /*
                        r1 = this;
                        java.lang.String r0 = "$this$clearAndSetSemantics"
                        kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r0)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.ExposedDropdownMenuDefaults$TrailingIcon$2.invoke2(androidx.compose.ui.semantics.SemanticsPropertyReceiver):void");
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ kotlin.Unit invoke(androidx.compose.ui.semantics.SemanticsPropertyReceiver r1) {
                    /*
                        r0 = this;
                        androidx.compose.ui.semantics.SemanticsPropertyReceiver r1 = (androidx.compose.ui.semantics.SemanticsPropertyReceiver) r1
                        r0.invoke2(r1)
                        kotlin.Unit r1 = kotlin.Unit.f60915a
                        return r1
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.ExposedDropdownMenuDefaults$TrailingIcon$2.invoke(java.lang.Object):java.lang.Object");
                }
            }
            androidx.compose.ui.Modifier r4 = androidx.compose.ui.semantics.SemanticsModifierKt.clearAndSetSemantics(r3, r4)
            androidx.compose.material.ExposedDropdownMenuDefaults$TrailingIcon$3 r3 = new androidx.compose.material.ExposedDropdownMenuDefaults$TrailingIcon$3
            r3.<init>()
            r5 = 726122713(0x2b47c0d9, float:7.096663E-13)
            r6 = 1
            androidx.compose.runtime.internal.ComposableLambda r7 = androidx.compose.runtime.internal.ComposableLambdaKt.composableLambda(r0, r5, r6, r3)
            int r1 = r1 >> 3
            r1 = r1 & 14
            r9 = r1 | 24576(0x6000, float:3.4438E-41)
            r10 = 12
            r5 = 0
            r6 = 0
            r3 = r11
            r8 = r0
            androidx.compose.material.IconButtonKt.IconButton(r3, r4, r5, r6, r7, r8, r9, r10)
        L78:
            androidx.compose.runtime.ScopeUpdateScope r6 = r0.endRestartGroup()
            if (r6 != 0) goto L7f
            goto L8e
        L7f:
            androidx.compose.material.ExposedDropdownMenuDefaults$TrailingIcon$4 r7 = new androidx.compose.material.ExposedDropdownMenuDefaults$TrailingIcon$4
            r0 = r7
            r1 = r12
            r2 = r13
            r4 = r16
            r5 = r17
            r0.<init>()
            r6.updateScope(r7)
        L8e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.ExposedDropdownMenuDefaults.TrailingIcon(boolean, kotlin.jvm.functions.Function0, androidx.compose.runtime.Composer, int, int):void");
    }

    @Composable
    @NotNull
    /* renamed from: outlinedTextFieldColors-DlUQjxs  reason: not valid java name */
    public final TextFieldColors m1073outlinedTextFieldColorsDlUQjxs(long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29, long j30, long j31, @Nullable Composer composer, int i10, int i11, int i12, int i13) {
        composer.startReplaceableGroup(1162641182);
        long m1841copywmQWz5c$default = (i13 & 1) != 0 ? Color.m1841copywmQWz5c$default(((Color) composer.consume(ContentColorKt.getLocalContentColor())).m1852unboximpl(), ((Number) composer.consume(ContentAlphaKt.getLocalContentAlpha())).floatValue(), 0.0f, 0.0f, 0.0f, 14, null) : j10;
        long m1841copywmQWz5c$default2 = (i13 & 2) != 0 ? Color.m1841copywmQWz5c$default(m1841copywmQWz5c$default, ContentAlpha.INSTANCE.getDisabled(composer, 6), 0.0f, 0.0f, 0.0f, 14, null) : j11;
        long m1877getTransparent0d7_KjU = (i13 & 4) != 0 ? Color.Companion.m1877getTransparent0d7_KjU() : j12;
        long m1003getPrimary0d7_KjU = (i13 & 8) != 0 ? MaterialTheme.INSTANCE.getColors(composer, 6).m1003getPrimary0d7_KjU() : j13;
        long m997getError0d7_KjU = (i13 & 16) != 0 ? MaterialTheme.INSTANCE.getColors(composer, 6).m997getError0d7_KjU() : j14;
        long m1841copywmQWz5c$default3 = (i13 & 32) != 0 ? Color.m1841copywmQWz5c$default(MaterialTheme.INSTANCE.getColors(composer, 6).m1003getPrimary0d7_KjU(), ContentAlpha.INSTANCE.getHigh(composer, 6), 0.0f, 0.0f, 0.0f, 14, null) : j15;
        long m1841copywmQWz5c$default4 = (i13 & 64) != 0 ? Color.m1841copywmQWz5c$default(MaterialTheme.INSTANCE.getColors(composer, 6).m1002getOnSurface0d7_KjU(), ContentAlpha.INSTANCE.getDisabled(composer, 6), 0.0f, 0.0f, 0.0f, 14, null) : j16;
        long m1841copywmQWz5c$default5 = (i13 & 128) != 0 ? Color.m1841copywmQWz5c$default(m1841copywmQWz5c$default4, ContentAlpha.INSTANCE.getDisabled(composer, 6), 0.0f, 0.0f, 0.0f, 14, null) : j17;
        long m997getError0d7_KjU2 = (i13 & 256) != 0 ? MaterialTheme.INSTANCE.getColors(composer, 6).m997getError0d7_KjU() : j18;
        long m1841copywmQWz5c$default6 = (i13 & 512) != 0 ? Color.m1841copywmQWz5c$default(MaterialTheme.INSTANCE.getColors(composer, 6).m1002getOnSurface0d7_KjU(), 0.54f, 0.0f, 0.0f, 0.0f, 14, null) : j19;
        long m1841copywmQWz5c$default7 = (i13 & 1024) != 0 ? Color.m1841copywmQWz5c$default(m1841copywmQWz5c$default6, ContentAlpha.INSTANCE.getDisabled(composer, 6), 0.0f, 0.0f, 0.0f, 14, null) : j20;
        long j32 = (i13 & 2048) != 0 ? m1841copywmQWz5c$default6 : j21;
        long m1841copywmQWz5c$default8 = (i13 & 4096) != 0 ? Color.m1841copywmQWz5c$default(MaterialTheme.INSTANCE.getColors(composer, 6).m1002getOnSurface0d7_KjU(), 0.54f, 0.0f, 0.0f, 0.0f, 14, null) : j22;
        long m1841copywmQWz5c$default9 = (i13 & 8192) != 0 ? Color.m1841copywmQWz5c$default(MaterialTheme.INSTANCE.getColors(composer, 6).m1003getPrimary0d7_KjU(), ContentAlpha.INSTANCE.getHigh(composer, 6), 0.0f, 0.0f, 0.0f, 14, null) : j23;
        long m1841copywmQWz5c$default10 = (i13 & 16384) != 0 ? Color.m1841copywmQWz5c$default(m1841copywmQWz5c$default8, ContentAlpha.INSTANCE.getDisabled(composer, 6), 0.0f, 0.0f, 0.0f, 14, null) : j24;
        long m997getError0d7_KjU3 = (32768 & i13) != 0 ? MaterialTheme.INSTANCE.getColors(composer, 6).m997getError0d7_KjU() : j25;
        long m1841copywmQWz5c$default11 = (65536 & i13) != 0 ? Color.m1841copywmQWz5c$default(MaterialTheme.INSTANCE.getColors(composer, 6).m1003getPrimary0d7_KjU(), ContentAlpha.INSTANCE.getHigh(composer, 6), 0.0f, 0.0f, 0.0f, 14, null) : j26;
        long m1841copywmQWz5c$default12 = (131072 & i13) != 0 ? Color.m1841copywmQWz5c$default(MaterialTheme.INSTANCE.getColors(composer, 6).m1002getOnSurface0d7_KjU(), ContentAlpha.INSTANCE.getMedium(composer, 6), 0.0f, 0.0f, 0.0f, 14, null) : j27;
        long m1841copywmQWz5c$default13 = (262144 & i13) != 0 ? Color.m1841copywmQWz5c$default(m1841copywmQWz5c$default12, ContentAlpha.INSTANCE.getDisabled(composer, 6), 0.0f, 0.0f, 0.0f, 14, null) : j28;
        long m997getError0d7_KjU4 = (524288 & i13) != 0 ? MaterialTheme.INSTANCE.getColors(composer, 6).m997getError0d7_KjU() : j29;
        long m1841copywmQWz5c$default14 = (1048576 & i13) != 0 ? Color.m1841copywmQWz5c$default(MaterialTheme.INSTANCE.getColors(composer, 6).m1002getOnSurface0d7_KjU(), ContentAlpha.INSTANCE.getMedium(composer, 6), 0.0f, 0.0f, 0.0f, 14, null) : j30;
        DefaultTextFieldForExposedDropdownMenusColors defaultTextFieldForExposedDropdownMenusColors = new DefaultTextFieldForExposedDropdownMenusColors(m1841copywmQWz5c$default, m1841copywmQWz5c$default2, m1003getPrimary0d7_KjU, m997getError0d7_KjU, m1841copywmQWz5c$default3, m1841copywmQWz5c$default4, m997getError0d7_KjU2, m1841copywmQWz5c$default5, m1841copywmQWz5c$default6, m1841copywmQWz5c$default7, j32, m1841copywmQWz5c$default8, m1841copywmQWz5c$default9, m1841copywmQWz5c$default10, m997getError0d7_KjU3, m1877getTransparent0d7_KjU, m1841copywmQWz5c$default11, m1841copywmQWz5c$default12, m1841copywmQWz5c$default13, m997getError0d7_KjU4, m1841copywmQWz5c$default14, (i13 & 2097152) != 0 ? Color.m1841copywmQWz5c$default(m1841copywmQWz5c$default14, ContentAlpha.INSTANCE.getDisabled(composer, 6), 0.0f, 0.0f, 0.0f, 14, null) : j31, null);
        composer.endReplaceableGroup();
        return defaultTextFieldForExposedDropdownMenusColors;
    }

    @Composable
    @NotNull
    /* renamed from: textFieldColors-DlUQjxs  reason: not valid java name */
    public final TextFieldColors m1074textFieldColorsDlUQjxs(long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29, long j30, long j31, @Nullable Composer composer, int i10, int i11, int i12, int i13) {
        composer.startReplaceableGroup(1208167904);
        long m1841copywmQWz5c$default = (i13 & 1) != 0 ? Color.m1841copywmQWz5c$default(((Color) composer.consume(ContentColorKt.getLocalContentColor())).m1852unboximpl(), ((Number) composer.consume(ContentAlphaKt.getLocalContentAlpha())).floatValue(), 0.0f, 0.0f, 0.0f, 14, null) : j10;
        long m1841copywmQWz5c$default2 = (i13 & 2) != 0 ? Color.m1841copywmQWz5c$default(m1841copywmQWz5c$default, ContentAlpha.INSTANCE.getDisabled(composer, 6), 0.0f, 0.0f, 0.0f, 14, null) : j11;
        long m1841copywmQWz5c$default3 = (i13 & 4) != 0 ? Color.m1841copywmQWz5c$default(MaterialTheme.INSTANCE.getColors(composer, 6).m1002getOnSurface0d7_KjU(), 0.12f, 0.0f, 0.0f, 0.0f, 14, null) : j12;
        long m1003getPrimary0d7_KjU = (i13 & 8) != 0 ? MaterialTheme.INSTANCE.getColors(composer, 6).m1003getPrimary0d7_KjU() : j13;
        long m997getError0d7_KjU = (i13 & 16) != 0 ? MaterialTheme.INSTANCE.getColors(composer, 6).m997getError0d7_KjU() : j14;
        long m1841copywmQWz5c$default4 = (i13 & 32) != 0 ? Color.m1841copywmQWz5c$default(MaterialTheme.INSTANCE.getColors(composer, 6).m1003getPrimary0d7_KjU(), ContentAlpha.INSTANCE.getHigh(composer, 6), 0.0f, 0.0f, 0.0f, 14, null) : j15;
        long m1841copywmQWz5c$default5 = (i13 & 64) != 0 ? Color.m1841copywmQWz5c$default(MaterialTheme.INSTANCE.getColors(composer, 6).m1002getOnSurface0d7_KjU(), 0.42f, 0.0f, 0.0f, 0.0f, 14, null) : j16;
        long m1841copywmQWz5c$default6 = (i13 & 128) != 0 ? Color.m1841copywmQWz5c$default(m1841copywmQWz5c$default5, ContentAlpha.INSTANCE.getDisabled(composer, 6), 0.0f, 0.0f, 0.0f, 14, null) : j17;
        long m997getError0d7_KjU2 = (i13 & 256) != 0 ? MaterialTheme.INSTANCE.getColors(composer, 6).m997getError0d7_KjU() : j18;
        long m1841copywmQWz5c$default7 = (i13 & 512) != 0 ? Color.m1841copywmQWz5c$default(MaterialTheme.INSTANCE.getColors(composer, 6).m1002getOnSurface0d7_KjU(), 0.54f, 0.0f, 0.0f, 0.0f, 14, null) : j19;
        long m1841copywmQWz5c$default8 = (i13 & 1024) != 0 ? Color.m1841copywmQWz5c$default(m1841copywmQWz5c$default7, ContentAlpha.INSTANCE.getDisabled(composer, 6), 0.0f, 0.0f, 0.0f, 14, null) : j20;
        long j32 = (i13 & 2048) != 0 ? m1841copywmQWz5c$default7 : j21;
        long m1841copywmQWz5c$default9 = (i13 & 4096) != 0 ? Color.m1841copywmQWz5c$default(MaterialTheme.INSTANCE.getColors(composer, 6).m1002getOnSurface0d7_KjU(), 0.54f, 0.0f, 0.0f, 0.0f, 14, null) : j22;
        long m1841copywmQWz5c$default10 = (i13 & 8192) != 0 ? Color.m1841copywmQWz5c$default(MaterialTheme.INSTANCE.getColors(composer, 6).m1003getPrimary0d7_KjU(), ContentAlpha.INSTANCE.getHigh(composer, 6), 0.0f, 0.0f, 0.0f, 14, null) : j23;
        long m1841copywmQWz5c$default11 = (i13 & 16384) != 0 ? Color.m1841copywmQWz5c$default(m1841copywmQWz5c$default9, ContentAlpha.INSTANCE.getDisabled(composer, 6), 0.0f, 0.0f, 0.0f, 14, null) : j24;
        long m997getError0d7_KjU3 = (32768 & i13) != 0 ? MaterialTheme.INSTANCE.getColors(composer, 6).m997getError0d7_KjU() : j25;
        long m1841copywmQWz5c$default12 = (65536 & i13) != 0 ? Color.m1841copywmQWz5c$default(MaterialTheme.INSTANCE.getColors(composer, 6).m1003getPrimary0d7_KjU(), ContentAlpha.INSTANCE.getHigh(composer, 6), 0.0f, 0.0f, 0.0f, 14, null) : j26;
        long m1841copywmQWz5c$default13 = (131072 & i13) != 0 ? Color.m1841copywmQWz5c$default(MaterialTheme.INSTANCE.getColors(composer, 6).m1002getOnSurface0d7_KjU(), ContentAlpha.INSTANCE.getMedium(composer, 6), 0.0f, 0.0f, 0.0f, 14, null) : j27;
        long m1841copywmQWz5c$default14 = (262144 & i13) != 0 ? Color.m1841copywmQWz5c$default(m1841copywmQWz5c$default13, ContentAlpha.INSTANCE.getDisabled(composer, 6), 0.0f, 0.0f, 0.0f, 14, null) : j28;
        long m997getError0d7_KjU4 = (524288 & i13) != 0 ? MaterialTheme.INSTANCE.getColors(composer, 6).m997getError0d7_KjU() : j29;
        long m1841copywmQWz5c$default15 = (1048576 & i13) != 0 ? Color.m1841copywmQWz5c$default(MaterialTheme.INSTANCE.getColors(composer, 6).m1002getOnSurface0d7_KjU(), ContentAlpha.INSTANCE.getMedium(composer, 6), 0.0f, 0.0f, 0.0f, 14, null) : j30;
        DefaultTextFieldForExposedDropdownMenusColors defaultTextFieldForExposedDropdownMenusColors = new DefaultTextFieldForExposedDropdownMenusColors(m1841copywmQWz5c$default, m1841copywmQWz5c$default2, m1003getPrimary0d7_KjU, m997getError0d7_KjU, m1841copywmQWz5c$default4, m1841copywmQWz5c$default5, m997getError0d7_KjU2, m1841copywmQWz5c$default6, m1841copywmQWz5c$default7, m1841copywmQWz5c$default8, j32, m1841copywmQWz5c$default9, m1841copywmQWz5c$default10, m1841copywmQWz5c$default11, m997getError0d7_KjU3, m1841copywmQWz5c$default3, m1841copywmQWz5c$default12, m1841copywmQWz5c$default13, m1841copywmQWz5c$default14, m997getError0d7_KjU4, m1841copywmQWz5c$default15, (i13 & 2097152) != 0 ? Color.m1841copywmQWz5c$default(m1841copywmQWz5c$default15, ContentAlpha.INSTANCE.getDisabled(composer, 6), 0.0f, 0.0f, 0.0f, 14, null) : j31, null);
        composer.endReplaceableGroup();
        return defaultTextFieldForExposedDropdownMenusColors;
    }
}
