package com.unity3d.ads.core.data.model;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: AdContext.kt */
@Metadata
/* loaded from: classes7.dex */
public final class AdDataRefreshToken {
    @NotNull
    private final String data;

    private /* synthetic */ AdDataRefreshToken(String str) {
        this.data = str;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ AdDataRefreshToken m4714boximpl(String str) {
        return new AdDataRefreshToken(str);
    }

    @NotNull
    /* renamed from: constructor-impl  reason: not valid java name */
    public static String m4715constructorimpl(@NotNull String data) {
        Intrinsics.checkNotNullParameter(data, "data");
        return data;
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m4716equalsimpl(String str, Object obj) {
        if (!(obj instanceof AdDataRefreshToken) || !Intrinsics.areEqual(str, ((AdDataRefreshToken) obj).m4720unboximpl())) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m4717equalsimpl0(String str, String str2) {
        return Intrinsics.areEqual(str, str2);
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m4718hashCodeimpl(String str) {
        return str.hashCode();
    }

    /* renamed from: toString-impl  reason: not valid java name */
    public static String m4719toStringimpl(String str) {
        return "AdDataRefreshToken(data=" + str + ')';
    }

    public boolean equals(Object obj) {
        return m4716equalsimpl(this.data, obj);
    }

    @NotNull
    public final String getData() {
        return this.data;
    }

    public int hashCode() {
        return m4718hashCodeimpl(this.data);
    }

    public String toString() {
        return m4719toStringimpl(this.data);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ String m4720unboximpl() {
        return this.data;
    }
}
