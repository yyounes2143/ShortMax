package org.slf4j.helpers;
/* loaded from: classes8.dex */
public abstract class MarkerIgnoringBase extends NamedLoggerBase implements du.a {
    @Override // org.slf4j.helpers.NamedLoggerBase, du.a
    public /* bridge */ /* synthetic */ String getName() {
        return super.getName();
    }

    public String toString() {
        return getClass().getName() + "(" + getName() + ")";
    }
}
