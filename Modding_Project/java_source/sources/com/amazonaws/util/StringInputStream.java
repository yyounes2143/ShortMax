package com.amazonaws.util;

import java.io.ByteArrayInputStream;
import java.io.UnsupportedEncodingException;
/* loaded from: classes2.dex */
public class StringInputStream extends ByteArrayInputStream {

    /* renamed from: a  reason: collision with root package name */
    private final String f6416a;

    public StringInputStream(String str) throws UnsupportedEncodingException {
        super(str.getBytes(StringUtils.f6417a));
        this.f6416a = str;
    }
}
