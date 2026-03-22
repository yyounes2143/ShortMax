package com.google.android.play.integrity.internal;

import java.util.Set;
/* compiled from: com.google.android.play:integrity@@1.4.0 */
/* loaded from: classes5.dex */
public abstract class as extends ao implements Set {

    /* renamed from: b  reason: collision with root package name */
    private transient ar f19981b;

    public static as n() {
        return au.f19985f;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof as) {
            ((as) obj).q();
            if (obj.hashCode() != 0) {
                return false;
            }
        }
        if (obj == this) {
            return true;
        }
        if (obj instanceof Set) {
            Set set = (Set) obj;
            try {
                if (size() == set.size()) {
                    if (containsAll(set)) {
                        return true;
                    }
                }
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    /* renamed from: h */
    public abstract p iterator();

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        int i10;
        int i11 = 0;
        for (Object obj : this) {
            if (obj != null) {
                i10 = obj.hashCode();
            } else {
                i10 = 0;
            }
            i11 += i10;
        }
        return i11;
    }

    public final ar i() {
        ar arVar = this.f19981b;
        if (arVar == null) {
            ar j10 = j();
            this.f19981b = j10;
            return j10;
        }
        return arVar;
    }

    ar j() {
        throw null;
    }

    boolean q() {
        throw null;
    }
}
