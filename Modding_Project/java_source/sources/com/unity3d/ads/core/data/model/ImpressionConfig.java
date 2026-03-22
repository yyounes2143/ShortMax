package com.unity3d.ads.core.data.model;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: AdContext.kt */
@Metadata
/* loaded from: classes7.dex */
public final class ImpressionConfig {
    @NotNull
    private final String data;

    private /* synthetic */ ImpressionConfig(String str) {
        this.data = str;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ ImpressionConfig m4721boximpl(String str) {
        return new ImpressionConfig(str);
    }

    @NotNull
    /* renamed from: constructor-impl  reason: not valid java name */
    public static String m4722constructorimpl(@NotNull String data) {
        Intrinsics.checkNotNullParameter(data, "data");
        return data;
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m4723equalsimpl(String str, Object obj) {
        if (!(obj instanceof ImpressionConfig) || !Intrinsics.areEqual(str, ((ImpressionConfig) obj).m4727unboximpl())) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m4724equalsimpl0(String str, String str2) {
        return Intrinsics.areEqual(str, str2);
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m4725hashCodeimpl(String str) {
        return str.hashCode();
    }

    /* renamed from: toString-impl  reason: not valid java name */
    public static String m4726toStringimpl(String str) {
        return "ImpressionConfig(data=" + str + ')';
    }

    public boolean equals(Object obj) {
        return m4723equalsimpl(this.data, obj);
    }

    @NotNull
    public final String getData() {
        return this.data;
    }

    public int hashCode() {
        return m4725hashCodeimpl(this.data);
    }

    public String toString() {
        return m4726toStringimpl(this.data);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ String m4727unboximpl() {
        return this.data;
    }
}
