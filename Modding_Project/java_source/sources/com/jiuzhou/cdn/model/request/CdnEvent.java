package com.jiuzhou.cdn.model.request;

import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;
/* compiled from: CdnEvent.kt */
@Metadata
/* loaded from: classes5.dex */
public final class CdnEvent {
    @Nullable
    private String app_version;
    @Nullable
    private String batch_id;
    @Nullable
    private String block_type;
    @Nullable
    private String brand;
    @Nullable
    private String cdn_domain;
    @Nullable
    private String collect_sdk_version;
    @Nullable
    private String country_code;
    @Nullable
    private String device_id;
    @Nullable
    private String err_code;
    @Nullable
    private String event_type;
    @Nullable
    private String http_status_code;
    @Nullable
    private String model;
    @Nullable
    private String network_type;
    @Nullable

    /* renamed from: os  reason: collision with root package name */
    private String f25578os;
    @Nullable
    private String os_version;
    @Nullable
    private String play_sdk_version;
    @Nullable
    private String remark;
    @Nullable
    private String req_header;
    @Nullable
    private String res_header;
    @Nullable
    private String resolution;
    @Nullable
    private String resource;
    @Nullable
    private String uid;
    private long event_time = -1;
    private long local_time = -1;
    private long check_time = -1;
    private int event_count = 1;
    private long event_duration = -1;
    private int video_duration = -1;

    @Nullable
    public final String getApp_version() {
        return this.app_version;
    }

    @Nullable
    public final String getBatch_id() {
        return this.batch_id;
    }

    @Nullable
    public final String getBlock_type() {
        return this.block_type;
    }

    @Nullable
    public final String getBrand() {
        return this.brand;
    }

    @Nullable
    public final String getCdn_domain() {
        return this.cdn_domain;
    }

    public final long getCheck_time() {
        return this.check_time;
    }

    @Nullable
    public final String getCollect_sdk_version() {
        return this.collect_sdk_version;
    }

    @Nullable
    public final String getCountry_code() {
        return this.country_code;
    }

    @Nullable
    public final String getDevice_id() {
        return this.device_id;
    }

    @Nullable
    public final String getErr_code() {
        return this.err_code;
    }

    public final int getEvent_count() {
        return this.event_count;
    }

    public final long getEvent_duration() {
        return this.event_duration;
    }

    public final long getEvent_time() {
        return this.event_time;
    }

    @Nullable
    public final String getEvent_type() {
        return this.event_type;
    }

    @Nullable
    public final String getHttp_status_code() {
        return this.http_status_code;
    }

    public final long getLocal_time() {
        return this.local_time;
    }

    @Nullable
    public final String getModel() {
        return this.model;
    }

    @Nullable
    public final String getNetwork_type() {
        return this.network_type;
    }

    @Nullable
    public final String getOs() {
        return this.f25578os;
    }

    @Nullable
    public final String getOs_version() {
        return this.os_version;
    }

    @Nullable
    public final String getPlay_sdk_version() {
        return this.play_sdk_version;
    }

    @Nullable
    public final String getRemark() {
        return this.remark;
    }

    @Nullable
    public final String getReq_header() {
        return this.req_header;
    }

    @Nullable
    public final String getRes_header() {
        return this.res_header;
    }

    @Nullable
    public final String getResolution() {
        return this.resolution;
    }

    @Nullable
    public final String getResource() {
        return this.resource;
    }

    @Nullable
    public final String getUid() {
        return this.uid;
    }

    public final int getVideo_duration() {
        return this.video_duration;
    }

    public final void setApp_version(@Nullable String str) {
        this.app_version = str;
    }

    public final void setBatch_id(@Nullable String str) {
        this.batch_id = str;
    }

    public final void setBlock_type(@Nullable String str) {
        this.block_type = str;
    }

    public final void setBrand(@Nullable String str) {
        this.brand = str;
    }

    public final void setCdn_domain(@Nullable String str) {
        this.cdn_domain = str;
    }

    public final void setCheck_time(long j10) {
        this.check_time = j10;
    }

    public final void setCollect_sdk_version(@Nullable String str) {
        this.collect_sdk_version = str;
    }

    public final void setCountry_code(@Nullable String str) {
        this.country_code = str;
    }

    public final void setDevice_id(@Nullable String str) {
        this.device_id = str;
    }

    public final void setErr_code(@Nullable String str) {
        this.err_code = str;
    }

    public final void setEvent_count(int i10) {
        this.event_count = i10;
    }

    public final void setEvent_duration(long j10) {
        this.event_duration = j10;
    }

    public final void setEvent_time(long j10) {
        this.event_time = j10;
    }

    public final void setEvent_type(@Nullable String str) {
        this.event_type = str;
    }

    public final void setHttp_status_code(@Nullable String str) {
        this.http_status_code = str;
    }

    public final void setLocal_time(long j10) {
        this.local_time = j10;
    }

    public final void setModel(@Nullable String str) {
        this.model = str;
    }

    public final void setNetwork_type(@Nullable String str) {
        this.network_type = str;
    }

    public final void setOs(@Nullable String str) {
        this.f25578os = str;
    }

    public final void setOs_version(@Nullable String str) {
        this.os_version = str;
    }

    public final void setPlay_sdk_version(@Nullable String str) {
        this.play_sdk_version = str;
    }

    public final void setRemark(@Nullable String str) {
        this.remark = str;
    }

    public final void setReq_header(@Nullable String str) {
        this.req_header = str;
    }

    public final void setRes_header(@Nullable String str) {
        this.res_header = str;
    }

    public final void setResolution(@Nullable String str) {
        this.resolution = str;
    }

    public final void setResource(@Nullable String str) {
        this.resource = str;
    }

    public final void setUid(@Nullable String str) {
        this.uid = str;
    }

    public final void setVideo_duration(int i10) {
        this.video_duration = i10;
    }
}
