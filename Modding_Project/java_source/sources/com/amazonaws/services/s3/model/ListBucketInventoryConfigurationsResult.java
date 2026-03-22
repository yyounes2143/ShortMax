package com.amazonaws.services.s3.model;

import com.amazonaws.services.s3.model.inventory.InventoryConfiguration;
import java.io.Serializable;
import java.util.List;
/* loaded from: classes2.dex */
public class ListBucketInventoryConfigurationsResult implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private List<InventoryConfiguration> f6079a;

    /* renamed from: b  reason: collision with root package name */
    private String f6080b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f6081c;

    /* renamed from: d  reason: collision with root package name */
    private String f6082d;

    public List<InventoryConfiguration> b() {
        return this.f6079a;
    }

    public void d(String str) {
        this.f6080b = str;
    }

    public void e(List<InventoryConfiguration> list) {
        this.f6079a = list;
    }

    public void f(String str) {
        this.f6082d = str;
    }

    public void g(boolean z10) {
        this.f6081c = z10;
    }
}
