package androidx.compose.ui.text.font;

import androidx.compose.ui.text.ExperimentalTextApi;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: DeviceFontFamilyNameFont.kt */
@ExperimentalTextApi
@Metadata
/* loaded from: classes.dex */
public final class DeviceFontFamilyName {
    @NotNull
    private final String name;

    private /* synthetic */ DeviceFontFamilyName(String str) {
        this.name = str;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ DeviceFontFamilyName m3743boximpl(String str) {
        return new DeviceFontFamilyName(str);
    }

    @NotNull
    /* renamed from: constructor-impl  reason: not valid java name */
    public static String m3744constructorimpl(@NotNull String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        if (name.length() > 0) {
            return name;
        }
        throw new IllegalArgumentException("name may not be empty");
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m3745equalsimpl(String str, Object obj) {
        if (!(obj instanceof DeviceFontFamilyName) || !Intrinsics.areEqual(str, ((DeviceFontFamilyName) obj).m3749unboximpl())) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m3746equalsimpl0(String str, String str2) {
        return Intrinsics.areEqual(str, str2);
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m3747hashCodeimpl(String str) {
        return str.hashCode();
    }

    /* renamed from: toString-impl  reason: not valid java name */
    public static String m3748toStringimpl(String str) {
        return "DeviceFontFamilyName(name=" + str + ')';
    }

    public boolean equals(Object obj) {
        return m3745equalsimpl(this.name, obj);
    }

    @NotNull
    public final String getName() {
        return this.name;
    }

    public int hashCode() {
        return m3747hashCodeimpl(this.name);
    }

    public String toString() {
        return m3748toStringimpl(this.name);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ String m3749unboximpl() {
        return this.name;
    }
}
