package com.bytedance.sdk.component.ZYk.oJ;
/* loaded from: classes3.dex */
public class PiB {
    public byte[] Pfn;

    /* renamed from: ba  reason: collision with root package name */
    public oJ f12605ba;
    public String ex;
    public jFA tB;

    /* loaded from: classes3.dex */
    public enum oJ {
        STRING_TYPE,
        BYTE_ARRAY_TYPE
    }

    public PiB() {
    }

    public static PiB oJ(jFA jfa, String str) {
        return new PiB(jfa, str, oJ.STRING_TYPE);
    }

    public PiB(jFA jfa, String str, oJ oJVar) {
        this.tB = jfa;
        this.ex = str;
        this.f12605ba = oJVar;
    }

    public static PiB oJ(jFA jfa, byte[] bArr) {
        return new PiB(jfa, bArr, oJ.BYTE_ARRAY_TYPE);
    }

    public PiB(jFA jfa, byte[] bArr, oJ oJVar) {
        this.tB = jfa;
        this.Pfn = bArr;
        this.f12605ba = oJVar;
    }
}
