package com.google.common.base;
/* loaded from: classes5.dex */
final class Present<T> extends Optional<T> {

    /* renamed from: a  reason: collision with root package name */
    private final T f20044a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Present(T t10) {
        this.f20044a = t10;
    }

    @Override // com.google.common.base.Optional
    public T d() {
        return this.f20044a;
    }

    @Override // com.google.common.base.Optional
    public boolean e() {
        return true;
    }

    public boolean equals(Object obj) {
        if (obj instanceof Present) {
            return this.f20044a.equals(((Present) obj).f20044a);
        }
        return false;
    }

    public int hashCode() {
        return this.f20044a.hashCode() + 1502476572;
    }

    public String toString() {
        return "Optional.of(" + this.f20044a + ")";
    }
}
