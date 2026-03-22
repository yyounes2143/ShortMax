package com.amazonaws.services.s3.model;

import java.util.List;
/* loaded from: classes2.dex */
public class GetObjectTaggingResult {

    /* renamed from: a  reason: collision with root package name */
    private String f6056a;

    /* renamed from: b  reason: collision with root package name */
    private List<Tag> f6057b;

    public GetObjectTaggingResult(List<Tag> list) {
        this.f6057b = list;
    }

    public void a(String str) {
        this.f6056a = str;
    }
}
