package com.amazonaws.util.json;

import com.amazonaws.AmazonClientException;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class JsonUtils {

    /* renamed from: a  reason: collision with root package name */
    private static final AwsJsonFactory f6443a = new GsonFactory();

    public static AwsJsonReader a(Reader reader) {
        return f6443a.b(reader);
    }

    public static AwsJsonWriter b(Writer writer) {
        return f6443a.a(writer);
    }

    public static Map<String, String> c(Reader reader) {
        AwsJsonReader a10 = a(reader);
        try {
            if (a10.peek() == null) {
                return Collections.EMPTY_MAP;
            }
            HashMap hashMap = new HashMap();
            a10.c();
            while (a10.hasNext()) {
                String g10 = a10.g();
                if (a10.e()) {
                    a10.f();
                } else {
                    hashMap.put(g10, a10.h());
                }
            }
            a10.d();
            a10.close();
            return Collections.unmodifiableMap(hashMap);
        } catch (IOException e10) {
            throw new AmazonClientException("Unable to parse JSON String.", e10);
        }
    }

    public static Map<String, String> d(String str) {
        if (str != null && !str.isEmpty()) {
            return c(new StringReader(str));
        }
        return Collections.EMPTY_MAP;
    }

    public static Map<String, String> e(Reader reader) {
        AwsJsonReader a10 = a(reader);
        try {
            if (a10.peek() == null) {
                return Collections.EMPTY_MAP;
            }
            HashMap hashMap = new HashMap();
            a10.c();
            while (a10.hasNext()) {
                String g10 = a10.g();
                if (a10.e()) {
                    if (AwsJsonToken.BEGIN_ARRAY.equals(a10.peek())) {
                        StringWriter stringWriter = new StringWriter();
                        AwsJsonWriter b10 = b(stringWriter);
                        a10.b();
                        b10.b();
                        while (true) {
                            try {
                                AwsJsonToken awsJsonToken = AwsJsonToken.END_ARRAY;
                                if (awsJsonToken.equals(a10.peek())) {
                                    break;
                                }
                                AwsJsonToken peek = a10.peek();
                                if (AwsJsonToken.BEGIN_OBJECT.equals(peek)) {
                                    a10.c();
                                    b10.c();
                                } else if (AwsJsonToken.FIELD_NAME.equals(peek)) {
                                    String g11 = a10.g();
                                    if (!AwsJsonToken.BEGIN_ARRAY.equals(a10.peek())) {
                                        b10.f(g11);
                                    }
                                } else if (AwsJsonToken.END_OBJECT.equals(peek)) {
                                    a10.d();
                                    b10.d();
                                } else if (awsJsonToken.equals(peek)) {
                                    a10.a();
                                    b10.a();
                                } else {
                                    if (!AwsJsonToken.VALUE_STRING.equals(peek) && !AwsJsonToken.VALUE_NUMBER.equals(peek) && !AwsJsonToken.VALUE_NULL.equals(peek) && !AwsJsonToken.VALUE_BOOLEAN.equals(peek)) {
                                        a10.f();
                                    }
                                    b10.e(a10.h());
                                }
                            } catch (IOException e10) {
                                e10.printStackTrace();
                            }
                        }
                        a10.a();
                        b10.a();
                        b10.flush();
                        b10.close();
                        hashMap.put(g10, stringWriter.toString());
                    } else {
                        a10.f();
                    }
                } else {
                    hashMap.put(g10, a10.h());
                }
            }
            a10.d();
            a10.close();
            return Collections.unmodifiableMap(hashMap);
        } catch (IOException e11) {
            throw new AmazonClientException("Unable to parse JSON String.", e11);
        }
    }

    public static String f(Map<String, String> map) {
        if (map != null && !map.isEmpty()) {
            try {
                StringWriter stringWriter = new StringWriter();
                AwsJsonWriter b10 = b(stringWriter);
                b10.c();
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    b10.f(entry.getKey()).e(entry.getValue());
                }
                b10.d();
                b10.close();
                return stringWriter.toString();
            } catch (IOException e10) {
                throw new AmazonClientException("Unable to serialize to JSON String.", e10);
            }
        }
        return com.applovin.impl.sdk.utils.JsonUtils.EMPTY_JSON;
    }
}
