package org.slf4j.helpers;

import java.io.ObjectStreamException;
import java.io.Serializable;
/* loaded from: classes8.dex */
abstract class NamedLoggerBase implements du.a, Serializable {

    /* renamed from: a  reason: collision with root package name */
    protected String f64373a;

    @Override // du.a
    public String getName() {
        return this.f64373a;
    }

    protected Object readResolve() throws ObjectStreamException {
        return du.b.j(getName());
    }
}
