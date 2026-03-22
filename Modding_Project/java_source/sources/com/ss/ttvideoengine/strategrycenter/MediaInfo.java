package com.ss.ttvideoengine.strategrycenter;

import java.util.List;
/* loaded from: classes6.dex */
public class MediaInfo {
    private int mComments;
    private double mDuration;
    private String mFormat;
    private int mLikes;
    private String mMediaID;
    private List<Representation> mRepresentations;
    private int mUserComment;
    private int mUserLike;
    private int mUserShare;

    public int getComments() {
        return this.mComments;
    }

    public double getDuration() {
        return this.mDuration;
    }

    public String getFormat() {
        return this.mFormat;
    }

    public int getLikes() {
        return this.mLikes;
    }

    public String getMediaID() {
        return this.mMediaID;
    }

    public int getUserComment() {
        return this.mUserComment;
    }

    public int getUserLike() {
        return this.mUserLike;
    }

    public int getUserShare() {
        return this.mUserShare;
    }

    public void setComments(int i10) {
        this.mComments = i10;
    }

    public void setDuration(double d10) {
        this.mDuration = d10;
    }

    public void setFormat(String str) {
        this.mFormat = str;
    }

    public void setLikes(int i10) {
        this.mLikes = i10;
    }

    public void setMediaID(String str) {
        this.mMediaID = str;
    }

    public void setUserComment(int i10) {
        this.mUserComment = i10;
    }

    public void setUserLike(int i10) {
        this.mUserLike = i10;
    }

    public void setUserShare(int i10) {
        this.mUserShare = i10;
    }
}
