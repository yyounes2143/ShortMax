package com.google.common.base;
/* loaded from: classes5.dex */
final class Absent<T> extends Optional<T> {

    /* renamed from: a  reason: collision with root package name */
    static final Absent<Object> f20038a = new Absent<>();

    private Absent() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> Optional<T> g() {
        return f20038a;
    }

    private Object readResolve() {
        return f20038a;
    }

    @Override // com.google.common.base.Optional
    public T d() {
        throw new IllegalStateException("Optional.get() cannot be called on an absent value");
    }

    @Override // com.google.common.base.Optional
    public boolean e() {
        return false;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return 2040732332;
    }

    public String toString() {
        return "Optional.absent()";
    }
}
