package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid;

import com.google.android.gms.fido.fido2.api.common.DevicePublicKeyStringDef;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes6.dex */
public final class p {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f34323a;

    /* renamed from: b  reason: collision with root package name */
    public static final p f34324b = new p("Portrait", 0);

    /* renamed from: c  reason: collision with root package name */
    public static final p f34325c = new p("Landscape", 1);

    /* renamed from: d  reason: collision with root package name */
    public static final p f34326d = new p("None", 2);

    /* renamed from: e  reason: collision with root package name */
    public static final /* synthetic */ p[] f34327e;

    /* renamed from: f  reason: collision with root package name */
    public static final /* synthetic */ ss.a f34328f;

    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final p a(@Nullable String str) {
            if (str != null) {
                int hashCode = str.hashCode();
                if (hashCode != 3387192) {
                    if (hashCode != 729267099) {
                        if (hashCode == 1430647483 && str.equals("landscape")) {
                            return p.f34325c;
                        }
                    } else if (str.equals("portrait")) {
                        return p.f34324b;
                    }
                } else if (str.equals(DevicePublicKeyStringDef.NONE)) {
                    return p.f34326d;
                }
            }
            return null;
        }

        public a() {
        }
    }

    static {
        p[] a10 = a();
        f34327e = a10;
        f34328f = kotlin.enums.a.a(a10);
        f34323a = new a(null);
    }

    public p(String str, int i10) {
    }

    public static final /* synthetic */ p[] a() {
        return new p[]{f34324b, f34325c, f34326d};
    }

    @NotNull
    public static ss.a<p> b() {
        return f34328f;
    }

    public static p valueOf(String str) {
        return (p) Enum.valueOf(p.class, str);
    }

    public static p[] values() {
        return (p[]) f34327e.clone();
    }
}
