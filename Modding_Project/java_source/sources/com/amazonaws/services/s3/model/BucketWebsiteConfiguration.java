package com.amazonaws.services.s3.model;

import java.io.Serializable;
import java.util.LinkedList;
import java.util.List;
/* loaded from: classes2.dex */
public class BucketWebsiteConfiguration implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private String f6011a;

    /* renamed from: b  reason: collision with root package name */
    private String f6012b;

    /* renamed from: c  reason: collision with root package name */
    private RedirectRule f6013c;

    /* renamed from: d  reason: collision with root package name */
    private List<RoutingRule> f6014d = new LinkedList();

    public BucketWebsiteConfiguration(String str) {
        this.f6011a = str;
    }

    public List<RoutingRule> b() {
        return this.f6014d;
    }

    public void d(String str) {
        this.f6012b = str;
    }

    public void e(String str) {
        this.f6011a = str;
    }

    public void f(RedirectRule redirectRule) {
        this.f6013c = redirectRule;
    }
}
