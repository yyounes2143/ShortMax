package com.amazonaws.services.s3.internal;

import com.amazonaws.services.s3.model.DeleteObjectsResult$DeletedObject;
import com.amazonaws.services.s3.model.MultiObjectDeleteException;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class DeleteObjectsResponse implements S3RequesterChargedResult {

    /* renamed from: a  reason: collision with root package name */
    private List<DeleteObjectsResult$DeletedObject> f5914a;

    /* renamed from: b  reason: collision with root package name */
    private List<MultiObjectDeleteException.DeleteError> f5915b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f5916c;

    public DeleteObjectsResponse() {
        this(new ArrayList(), new ArrayList());
    }

    public List<DeleteObjectsResult$DeletedObject> a() {
        return this.f5914a;
    }

    @Override // com.amazonaws.services.s3.internal.S3RequesterChargedResult
    public void b(boolean z10) {
        this.f5916c = z10;
    }

    public List<MultiObjectDeleteException.DeleteError> c() {
        return this.f5915b;
    }

    public DeleteObjectsResponse(List<DeleteObjectsResult$DeletedObject> list, List<MultiObjectDeleteException.DeleteError> list2) {
        this.f5914a = list;
        this.f5915b = list2;
    }
}
