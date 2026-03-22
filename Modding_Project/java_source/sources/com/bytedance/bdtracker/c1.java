package com.bytedance.bdtracker;

import java.util.HashMap;
import java.util.HashSet;
/* loaded from: classes3.dex */
public class c1 extends a1 {
    public c1(HashSet<String> hashSet, HashMap<String, HashSet<String>> hashMap) {
        super(hashSet, hashMap);
    }

    @Override // com.bytedance.bdtracker.a1
    public boolean a(String str) {
        return this.f11856a.contains(str);
    }

    @Override // com.bytedance.bdtracker.a1
    public boolean a(HashSet<String> hashSet, String str) {
        return hashSet.contains(str);
    }
}
