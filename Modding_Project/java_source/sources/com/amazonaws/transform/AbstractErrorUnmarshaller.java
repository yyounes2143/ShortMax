package com.amazonaws.transform;

import com.amazonaws.AmazonServiceException;
/* loaded from: classes2.dex */
public abstract class AbstractErrorUnmarshaller<T> implements Unmarshaller<AmazonServiceException, T> {

    /* renamed from: a  reason: collision with root package name */
    protected final Class<? extends AmazonServiceException> f6383a;

    public AbstractErrorUnmarshaller() {
        this(AmazonServiceException.class);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AmazonServiceException b(String str) throws Exception {
        return this.f6383a.getConstructor(String.class).newInstance(str);
    }

    public AbstractErrorUnmarshaller(Class<? extends AmazonServiceException> cls) {
        this.f6383a = cls;
    }
}
