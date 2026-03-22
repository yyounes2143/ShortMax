package com.explorestack.protobuf;

import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.explorestack.protobuf.Descriptors;
import java.util.Collections;
import java.util.Map;
import java.util.logging.Logger;
/* compiled from: TypeRegistry.java */
/* loaded from: classes3.dex */
public class f2 {

    /* renamed from: b  reason: collision with root package name */
    private static final Logger f14380b = Logger.getLogger(f2.class.getName());

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, Descriptors.Descriptor> f14381a;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TypeRegistry.java */
    /* loaded from: classes3.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private static final f2 f14382a = new f2(Collections.emptyMap());
    }

    f2(Map<String, Descriptors.Descriptor> map) {
        this.f14381a = map;
    }

    public static f2 c() {
        return a.f14382a;
    }

    private static String d(String str) throws InvalidProtocolBufferException {
        String[] split = str.split(DomExceptionUtils.SEPARATOR);
        if (split.length != 1) {
            return split[split.length - 1];
        }
        throw new InvalidProtocolBufferException("Invalid type url found: " + str);
    }

    public Descriptors.Descriptor a(String str) {
        return this.f14381a.get(str);
    }

    public final Descriptors.Descriptor b(String str) throws InvalidProtocolBufferException {
        return a(d(str));
    }
}
