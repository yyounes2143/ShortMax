package com.amazonaws.mobile.client;

import java.util.Map;
/* loaded from: classes2.dex */
interface KeyValueStore {
    void a(String str, String str2);

    void b(Map<String, String> map);

    Map<String, String> c(String... strArr);

    String get(String str);
}
