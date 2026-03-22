package com.bytedance.bdtracker;

import android.text.TextUtils;
import java.io.File;
import java.util.ArrayList;
/* loaded from: classes3.dex */
public class m4 {

    /* renamed from: a  reason: collision with root package name */
    public final ArrayList<String> f12216a = new ArrayList<>();

    public final void a(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        StringBuilder a10 = a.a(str);
        a10.append(File.separator);
        a10.append(str2);
        a10.append(".dat");
        File file = new File(a10.toString());
        if (file.exists()) {
            file.delete();
        }
    }
}
