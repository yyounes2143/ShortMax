package com.mbridge.msdk.foundation.tools;

import com.mbridge.msdk.foundation.tools.FastKV;
import java.util.LinkedHashSet;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: StringSetEncoder.java */
/* loaded from: classes5.dex */
public class y0 implements FastKV.b<Set<String>> {

    /* renamed from: a  reason: collision with root package name */
    static final y0 f27531a = new y0();

    private y0() {
    }

    @Override // com.mbridge.msdk.foundation.tools.FastKV.b
    /* renamed from: b */
    public Set<String> a(byte[] bArr, int i10, int i11) {
        int i12;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        if (i11 > 0) {
            a0 a0Var = new a0(bArr, i10);
            int i13 = i10 + i11;
            while (true) {
                i12 = a0Var.f27373b;
                if (i12 >= i13) {
                    break;
                }
                linkedHashSet.add(a0Var.e(a0Var.g()));
            }
            if (i12 != i13) {
                throw new IllegalArgumentException("Invalid String set");
            }
        }
        return linkedHashSet;
    }

    @Override // com.mbridge.msdk.foundation.tools.FastKV.b
    public byte[] a(Set<String> set) {
        if (set.isEmpty()) {
            return new byte[0];
        }
        int size = set.size();
        int[] iArr = new int[size];
        String[] strArr = new String[size];
        int i10 = 0;
        int i11 = 0;
        for (String str : set) {
            if (str == null) {
                i10 += 5;
                iArr[i11] = -1;
            } else {
                int b10 = a0.b(str);
                strArr[i11] = str;
                iArr[i11] = b10;
                i10 += a0.f(b10) + b10;
            }
            i11++;
        }
        a0 a0Var = new a0(i10);
        for (int i12 = 0; i12 < size; i12++) {
            int i13 = iArr[i12];
            a0Var.h(i13);
            if (i13 >= 0) {
                a0Var.c(strArr[i12]);
            }
        }
        return a0Var.f27372a;
    }

    @Override // com.mbridge.msdk.foundation.tools.FastKV.b
    public String a() {
        return "StringSet";
    }
}
