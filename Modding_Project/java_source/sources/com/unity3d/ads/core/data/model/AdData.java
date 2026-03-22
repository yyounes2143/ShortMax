package com.unity3d.ads.core.data.model;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: AdContext.kt */
@Metadata
/* loaded from: classes7.dex */
public final class AdData {
    @NotNull
    private final String data;

    private /* synthetic */ AdData(String str) {
        this.data = str;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ AdData m4707boximpl(String str) {
        return new AdData(str);
    }

    @NotNull
    /* renamed from: constructor-impl  reason: not valid java name */
    public static String m4708constructorimpl(@NotNull String data) {
        Intrinsics.checkNotNullParameter(data, "data");
        return data;
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m4709equalsimpl(String str, Object obj) {
        if (!(obj instanceof AdData) || !Intrinsics.areEqual(str, ((AdData) obj).m4713unboximpl())) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m4710equalsimpl0(String str, String str2) {
        return Intrinsics.areEqual(str, str2);
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m4711hashCodeimpl(String str) {
        return str.hashCode();
    }

    /* renamed from: toString-impl  reason: not valid java name */
    public static String m4712toStringimpl(String str) {
        return "AdData(data=" + str + ')';
    }

    public boolean equals(Object obj) {
        return m4709equalsimpl(this.data, obj);
    }

    @NotNull
    public final String getData() {
        return this.data;
    }

    public int hashCode() {
        return m4711hashCodeimpl(this.data);
    }

    public String toString() {
        return m4712toStringimpl(this.data);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ String m4713unboximpl() {
        return this.data;
    }
}
