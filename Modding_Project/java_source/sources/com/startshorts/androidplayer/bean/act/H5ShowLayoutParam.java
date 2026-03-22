package com.startshorts.androidplayer.bean.act;

import com.startshorts.androidplayer.bean.act.H5ShowLayoutParam;
import fk.z;
import jk.g;
import kotlin.Metadata;
import kotlin.c;
import kotlin.jvm.functions.Function0;
import ms.i;
import org.jetbrains.annotations.NotNull;
/* compiled from: ActConstants.kt */
@Metadata
/* loaded from: classes6.dex */
public final class H5ShowLayoutParam {
    public static final int FULLSCREEN_HEIGHT = -1;
    public static final int NO_PADDING = 0;
    public static final int NO_RADIUS = 0;
    @NotNull
    public static final H5ShowLayoutParam INSTANCE = new H5ShowLayoutParam();
    @NotNull
    private static final i HALF_SCREEN_HEIGHT$delegate = c.b(new Function0() { // from class: rd.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            int HALF_SCREEN_HEIGHT_delegate$lambda$0;
            HALF_SCREEN_HEIGHT_delegate$lambda$0 = H5ShowLayoutParam.HALF_SCREEN_HEIGHT_delegate$lambda$0();
            return Integer.valueOf(HALF_SCREEN_HEIGHT_delegate$lambda$0);
        }
    });
    @NotNull
    private static final i EMBEDDED_HEIGHT$delegate = c.b(new Function0() { // from class: rd.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            int EMBEDDED_HEIGHT_delegate$lambda$1;
            EMBEDDED_HEIGHT_delegate$lambda$1 = H5ShowLayoutParam.EMBEDDED_HEIGHT_delegate$lambda$1();
            return Integer.valueOf(EMBEDDED_HEIGHT_delegate$lambda$1);
        }
    });
    @NotNull
    private static final i EMBEDDED_PADDING$delegate = c.b(new Function0() { // from class: rd.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            int EMBEDDED_PADDING_delegate$lambda$2;
            EMBEDDED_PADDING_delegate$lambda$2 = H5ShowLayoutParam.EMBEDDED_PADDING_delegate$lambda$2();
            return Integer.valueOf(EMBEDDED_PADDING_delegate$lambda$2);
        }
    });
    @NotNull
    private static final i RADIUS$delegate = c.b(new Function0() { // from class: rd.d
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            int RADIUS_delegate$lambda$3;
            RADIUS_delegate$lambda$3 = H5ShowLayoutParam.RADIUS_delegate$lambda$3();
            return Integer.valueOf(RADIUS_delegate$lambda$3);
        }
    });

    private H5ShowLayoutParam() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int EMBEDDED_HEIGHT_delegate$lambda$1() {
        return g.a(380.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int EMBEDDED_PADDING_delegate$lambda$2() {
        return g.a(32.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int HALF_SCREEN_HEIGHT_delegate$lambda$0() {
        return g.a(492.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int RADIUS_delegate$lambda$3() {
        return z.f51786a.b();
    }

    public final int getEMBEDDED_HEIGHT() {
        return ((Number) EMBEDDED_HEIGHT$delegate.getValue()).intValue();
    }

    public final int getEMBEDDED_PADDING() {
        return ((Number) EMBEDDED_PADDING$delegate.getValue()).intValue();
    }

    public final int getHALF_SCREEN_HEIGHT() {
        return ((Number) HALF_SCREEN_HEIGHT$delegate.getValue()).intValue();
    }

    public final int getRADIUS() {
        return ((Number) RADIUS$delegate.getValue()).intValue();
    }
}
