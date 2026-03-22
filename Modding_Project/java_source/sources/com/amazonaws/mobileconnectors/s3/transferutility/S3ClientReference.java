package com.amazonaws.mobileconnectors.s3.transferutility;

import com.amazonaws.services.s3.AmazonS3;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2.dex */
class S3ClientReference {

    /* renamed from: a  reason: collision with root package name */
    private static Map<Integer, AmazonS3> f5637a = new ConcurrentHashMap();

    public static AmazonS3 a(Integer num) {
        return f5637a.get(num);
    }

    public static void b(Integer num, AmazonS3 amazonS3) {
        f5637a.put(num, amazonS3);
    }

    public static void c(Integer num) {
        f5637a.remove(num);
    }
}
