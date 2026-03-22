package com.inmobi.media;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: com.inmobi.media.n4  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class EnumC3077n4 {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ EnumC3077n4[] f25050a;

    static {
        EnumC3077n4[] enumC3077n4Arr = {new EnumC3077n4(0, -100, "PING_V2_DISABLED", "Ping V2 is disabled from SDK config"), new EnumC3077n4(1, -101, "PING_ID_MISSING", "Ping ID is missing"), new EnumC3077n4(2, -102, "PING_URL_INVALID", "Ping url is invalid"), new EnumC3077n4(3, -103, "PING_URL_MISSING", "Ping URL is missing"), new EnumC3077n4(4, -104, "PING_JSON_INVALID", "Ping JSON is invalid"), new EnumC3077n4(5, -105, "PING_ARRAY_EMPTY", "Ping array is empty"), new EnumC3077n4(6, -106, "PING_UNKNOWN_RESPONSE", "Ping response is unknown"), new EnumC3077n4(7, -107, "PING_EXCEPTION", "Ping exception occurred")};
        f25050a = enumC3077n4Arr;
        kotlin.enums.a.a(enumC3077n4Arr);
    }

    public EnumC3077n4(int i10, int i11, String str, String str2) {
    }

    public static EnumC3077n4 valueOf(String str) {
        return (EnumC3077n4) Enum.valueOf(EnumC3077n4.class, str);
    }

    public static EnumC3077n4[] values() {
        return (EnumC3077n4[]) f25050a.clone();
    }
}
