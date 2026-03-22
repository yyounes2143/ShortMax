package com.amazonaws.services.s3.model;

import com.amazonaws.services.s3.internal.S3RequesterChargedResult;
import java.io.Serializable;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
/* loaded from: classes2.dex */
public class AccessControlList implements Serializable, S3RequesterChargedResult {

    /* renamed from: a  reason: collision with root package name */
    private Set<Grant> f5974a;

    /* renamed from: b  reason: collision with root package name */
    private List<Grant> f5975b;

    /* renamed from: c  reason: collision with root package name */
    private Owner f5976c = null;

    /* renamed from: d  reason: collision with root package name */
    private boolean f5977d;

    private void d() {
        if (this.f5974a != null && this.f5975b != null) {
            throw new IllegalStateException("Both grant set and grant list cannot be null");
        }
    }

    @Override // com.amazonaws.services.s3.internal.S3RequesterChargedResult
    public void b(boolean z10) {
        this.f5977d = z10;
    }

    @Deprecated
    public Set<Grant> e() {
        d();
        if (this.f5974a == null) {
            if (this.f5975b == null) {
                this.f5974a = new HashSet();
            } else {
                this.f5974a = new HashSet(this.f5975b);
                this.f5975b = null;
            }
        }
        return this.f5974a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        AccessControlList accessControlList = (AccessControlList) obj;
        Owner owner = this.f5976c;
        if (owner == null) {
            if (accessControlList.f5976c != null) {
                return false;
            }
        } else if (!owner.equals(accessControlList.f5976c)) {
            return false;
        }
        Set<Grant> set = this.f5974a;
        if (set == null) {
            if (accessControlList.f5974a != null) {
                return false;
            }
        } else if (!set.equals(accessControlList.f5974a)) {
            return false;
        }
        List<Grant> list = this.f5975b;
        if (list == null) {
            if (accessControlList.f5975b != null) {
                return false;
            }
        } else if (!list.equals(accessControlList.f5975b)) {
            return false;
        }
        return true;
    }

    public List<Grant> f() {
        d();
        if (this.f5975b == null) {
            if (this.f5974a == null) {
                this.f5975b = new LinkedList();
            } else {
                this.f5975b = new LinkedList(this.f5974a);
                this.f5974a = null;
            }
        }
        return this.f5975b;
    }

    public Owner g() {
        return this.f5976c;
    }

    public void h(Grantee grantee, Permission permission) {
        f().add(new Grant(grantee, permission));
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        Owner owner = this.f5976c;
        int i10 = 0;
        if (owner == null) {
            hashCode = 0;
        } else {
            hashCode = owner.hashCode();
        }
        int i11 = (hashCode + 31) * 31;
        Set<Grant> set = this.f5974a;
        if (set == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = set.hashCode();
        }
        int i12 = (i11 + hashCode2) * 31;
        List<Grant> list = this.f5975b;
        if (list != null) {
            i10 = list.hashCode();
        }
        return i12 + i10;
    }

    public void i(Owner owner) {
        this.f5976c = owner;
    }

    public String toString() {
        return "AccessControlList [owner=" + this.f5976c + ", grants=" + f() + "]";
    }
}
