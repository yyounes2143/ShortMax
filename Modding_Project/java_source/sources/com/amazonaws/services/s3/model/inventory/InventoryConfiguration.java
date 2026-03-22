package com.amazonaws.services.s3.model.inventory;

import java.io.Serializable;
import java.util.List;
/* loaded from: classes2.dex */
public class InventoryConfiguration implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private String f6225a;

    /* renamed from: b  reason: collision with root package name */
    private InventoryDestination f6226b;

    /* renamed from: c  reason: collision with root package name */
    private Boolean f6227c;

    /* renamed from: d  reason: collision with root package name */
    private InventoryFilter f6228d;

    /* renamed from: e  reason: collision with root package name */
    private String f6229e;

    /* renamed from: f  reason: collision with root package name */
    private List<String> f6230f;

    /* renamed from: g  reason: collision with root package name */
    private InventorySchedule f6231g;

    public void b(InventoryDestination inventoryDestination) {
        this.f6226b = inventoryDestination;
    }

    public void d(Boolean bool) {
        this.f6227c = bool;
    }

    public void e(String str) {
        this.f6225a = str;
    }

    public void f(String str) {
        this.f6229e = str;
    }

    public void g(InventoryFilter inventoryFilter) {
        this.f6228d = inventoryFilter;
    }

    public void h(List<String> list) {
        this.f6230f = list;
    }

    public void i(InventorySchedule inventorySchedule) {
        this.f6231g = inventorySchedule;
    }
}
