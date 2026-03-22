package com.inmobi.media;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes5.dex */
public final class Ta {

    /* renamed from: b  reason: collision with root package name */
    public static final Ta f24218b;

    /* renamed from: c  reason: collision with root package name */
    public static final Ta f24219c;

    /* renamed from: d  reason: collision with root package name */
    public static final /* synthetic */ Ta[] f24220d;

    /* renamed from: a  reason: collision with root package name */
    public final int f24221a;

    static {
        Ta ta2 = new Ta(0, 0, "HIGHEST");
        f24218b = ta2;
        Ta ta3 = new Ta(1, 1, "HIGH");
        Ta ta4 = new Ta(2, 2, "MEDIUM");
        f24219c = ta4;
        Ta[] taArr = {ta2, ta3, ta4, new Ta(3, 3, "LOW"), new Ta(4, 4, "LOWEST")};
        f24220d = taArr;
        kotlin.enums.a.a(taArr);
    }

    public Ta(int i10, int i11, String str) {
        this.f24221a = i11;
    }

    public static Ta valueOf(String str) {
        return (Ta) Enum.valueOf(Ta.class, str);
    }

    public static Ta[] values() {
        return (Ta[]) f24220d.clone();
    }
}
